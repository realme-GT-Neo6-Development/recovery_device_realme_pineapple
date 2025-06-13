#  OrangeFox recovery tree for relame devices with qualcomm processor codenamed pineapple

Code name pineapple includes next platforms: sm8650, sm8635, and sm7675. This recovery can be launched on Realme GT Neo 6(RMX3852(bale)), Realme GT6 Global/China(RMX3851/RMX3800), Realme GT 6T/Neo 6 SE(RMX3850/RMX3853) and Realme GT5 PRO(RMX3888)

This recovery can also be run on other oplus devices with the appropriate processor

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
- [ ] Сannot format DATA (this is prevented by the inability to unmap super devices + in any case, you cannot format DATA on RUI until user data is decrypted)

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
