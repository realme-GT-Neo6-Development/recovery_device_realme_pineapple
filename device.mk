#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Configure base.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Configure core_64_bit_only.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Configure Virtual A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Configure virtual_ab compression.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/compression.mk)

# Configure emulated_storage.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Platform
QCOM_BOARD_PLATFORMS += $(PRODUCT_PLATFORM)
TARGET_BOARD_PLATFORM := $(PRODUCT_PLATFORM)
TARGET_BOOTLOADER_BOARD_NAME := $(TARGET_BOARD_PLATFORM)
TARGET_BOARD_PLATFORM_GPU := qcom-adreno735

# Kernel
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false
PRODUCT_ENABLE_UFFD_GC := true

# A/B related packagesc
PRODUCT_PACKAGES += update_engine \
    update_engine_client \
    update_verifier \
    update_engine_sideload \
    bootctrl.pineapple.recovery \
    android.hardware.boot@1.2-impl-qti.recovery

# SHIPPING API
PRODUCT_SHIPPING_API_LEVEL := 31

# A/B support
AB_OTA_UPDATER := true

# VNDK API
PRODUCT_TARGET_VNDK_VERSION := 34

# A/B updater updatable partitions list. Keep in sync with the partition list
# with "_a" and "_b" variants in the device. Note that the vendor can add more
# more partitions to this list for the bootloader and radio.
AB_OTA_PARTITIONS ?= boot vendor_boot recovery vendor_dlkm dtbo vbmeta

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# OEM otacerts
PRODUCT_EXTRA_RECOVERY_KEYS += \
    $(DEVICE_PATH)/security/otacert
