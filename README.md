# Modified OrangeFox recovery tree for realme "pineapple" devices.
Platforms, included under realme's codename "pineapple", are:
- Qualcomm Snapdragon 8 Gen 3 (SM8650)
- Qualcomm Snapdragon 8s Gen 3 (SM8635)
- Qualcomm Snapdragon 7+ Gen 3 (SM7675)</br>

Devices, that can run and will run this recovery without any sudden and unforseen issues:
- realme GT5 Pro (enzo / RMX3888 / RE5C37)
- realme GT Neo6 (bale / RMX3852 / RE5C46L1)
- realme GT6 Global (bale / RMX3851 / RE5CA6L1)
- realme GT Neo 6SE (bale / RMX3850 / RE5C39L1)
- realme GT6T (bale / RMX3853 / RE606FL1)
- realme GT6 CN (divo / RMX3800 / RE5C4FL1)</br>

Huge thanks to [MisterZtr](https://github.com/MisterZtr) for recovery base

## Features
Works:
- [X] ADB
- [X] Display
- [X] Fasbootd
- [X] Flashing
- [X] Sideload
- [X] USB OTG
- [X] Touch
- [X] Flashlight
- [X] Vibrator/Haptic
- [X] OTA/Payload
- [ ] User data decryption on RUI(We can only decrypt “/data”)
- [ ] Unable to successfully unmap super devices(If try to fix this, it causes an OrangeFox bug with hw control, which prevents recovery from loading until OFOX settings are cleared)
- [ ] Сannot format data (this is prevented by the inability to unmap super devices + in any case, you cannot format DATA on RUI until user data is decrypted)

## Modifications themselves
- [X] Utility: parted (repartition your device's partitions. Included in recovery)
- [ ] Utility: gdisk / sfdisk (GPT fix for Windows starting with 24H2. Will be included in recovery with additional script for automatic fix later in releases)
- [X] Auto-mount of ESP, Windows and Linux partitions in recovery</br>
More mods will be added later...

# Building
```bash
git clone https://github.com/realme-pineapple-devs/recovery_device_realme_pineapple.git device/realme/pineapple
. build/envsetup.sh
lunch twrp_pineapple-ap2a-eng
make installclean
mka adbd recoveryimage
```

## To use it:
```
fastboot flash recovery out/target/product/pineapple/recovery.img
```
