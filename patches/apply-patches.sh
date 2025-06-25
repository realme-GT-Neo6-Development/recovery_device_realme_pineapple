#!/bin/bash

set -e

# Определяем корневую директорию проекта
script_dir="$(cd "$(dirname "$0")" && pwd)"
project_root="$(cd "$script_dir/../../../.." && pwd)"
patches_dir="$script_dir"

echo -e "\n### APPLYING PATCHES ###"
sleep 1.0

# Проверяем существование каталога с патчами
if [ ! -d "$patches_dir" ]; then
    echo "Error: Patches directory not found at $patches_dir"
    exit 1
fi

# Обрабатываем каждый подкаталог с патчами
for patch_category in "$patches_dir"/*/; do
    [ ! -d "$patch_category" ] && continue

    category_name=$(basename "$patch_category")
    target_dir=$(tr _ / <<<"$category_name")

    if ! pushd "$project_root/$target_dir" >/dev/null; then
        echo "Error: Target directory $target_dir not found!"
        continue
    fi

    # Применяем каждый патч в категории
    for patch in "$patch_category"/*.patch; do
        [ ! -f "$patch" ] && continue

        patch_name=$(basename "$patch")
        echo -e "\n* Applying $patch_name"

        # Проверка на уже применённый патч
        if patch -f -p1 --dry-run -R < "$patch" >/dev/null; then
            echo "Already applied"
            continue
        fi

        # Попытка применить через git am
        if git apply --check "$patch" >/dev/null 2>&1; then
            if git am "$patch"; then
                echo "Applied successfully"
                continue
            fi
        fi

        # Возврат на обычный patch
        if patch -f -p1 --dry-run < "$patch" >/dev/null; then
            git am "$patch" || true
            if patch -f -p1 < "$patch"; then
                git add -u
                git am --continue
                echo "  Applied successfully (patch)"
            else
                echo "  Failed to apply (patch failed)"
            fi
        else
            echo "  Failed to apply (patch check failed)"
        fi
    done

    popd >/dev/null
done

echo -e "\n### ALL PATCHES PROCESSED ###"
