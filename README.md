#  Recovery tree for Relame devices with qualcomm processor codenamed pineapple

It can be launched on Realme GT6 Global and China, Realme GT Neo 6 and Realme GT5 PRO
It is also possible to run on the Realme GT 6T/Neo 6 SE, and other devices with this series of processors

## Features

Works:

- [X] ADB
- [ ] User data decryption
- [X] Display
- [X] Fasbootd
- [X] Flashing
- [X] MTP
- [X] Sideload
- [X] USB OTG
- [X] SD Card
- [X] Touch
- [X] Flashlight
- [X] Vibrator/Haptic
- [X] OTA

# Building

```bash
git clone https://github.com/MisterZtr/recovery_device_realme_pineapple.git device/realme/pineapple
. build/envsetup.sh
lunch twrp_pineapple-ap2a-eng
make installclean
cp device/realme/pineapple/prebuilt/kernel out/target/product/pineapple/
mka adbd recoveryimage
```

## To use it:

```
fastboot flash recovery out/target/product/pineapple/recovery.img
```
