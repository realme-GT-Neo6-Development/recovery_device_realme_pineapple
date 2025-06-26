#!/system/bin/sh
# This script is needed to automatically set device props.
variant=$(getprop ro.boot.prjname)
echo $variant
        case $variant in
            "23607")
            # realme GT5 Pro (enzo)
                echo "Realme GT5 pro" > /config/usb_gadget/g1/strings/0x409/product
                resetprop ro.product.device "RE5C37"
                resetprop ro.product.system.device "RMX3888"
                resetprop ro.product.vendor.device "RE5C37"
                resetprop ro.product.odm.device "RE5C37"
                resetprop ro.product.product.device "RE5C37"
                resetprop ro.product.system_ext.device "RE5C37"
                resetprop ro.product.product.model "RMX3888"
                resetprop ro.product.model "RMX3888"
                resetprop ro.product.system.model "RMX3888"
                resetprop ro.product.system_ext.model "RMX3888"
                resetprop ro.product.vendor.model "RMX3888"
                resetprop ro.product.odm.model "RMX3888"
                resetprop ro.boot.hardware.revision "CN"
                ;;
            "23609")
            # realme GT Neo 6SE (bale)
                echo "Realme GT Neo 6SE" > /config/usb_gadget/g1/strings/0x409/product
                resetprop ro.product.device "RE5C39L1"
                resetprop ro.product.system.device "RMX3850"
                resetprop ro.product.vendor.device "RE5C39L1"
                resetprop ro.product.odm.device "RE5C39L1"
                resetprop ro.product.product.device "RE5C39L1"
                resetprop ro.product.system_ext.device "RE5C39L1"
                resetprop ro.product.product.model "RMX3850"
                resetprop ro.product.model "RMX3850"
                resetprop ro.product.system.model "RMX3850"
                resetprop ro.product.system_ext.model "RMX3850"
                resetprop ro.product.vendor.model "RMX3850"
                resetprop ro.product.odm.model "RMX3850"
                resetprop ro.boot.hardware.revision "CN"
                ;;
            "23622")
            # realme GT Neo6 (bale)
                echo "Realme GT Neo6" > /config/usb_gadget/g1/strings/0x409/product
                resetprop ro.product.device "RE5C46L1"
                resetprop ro.product.system.device "RMX3852"
                resetprop ro.product.vendor.device "RE5C46L1"
                resetprop ro.product.odm.device "RE5C46L1"
                resetprop ro.product.product.device "RE5C46L1"
                resetprop ro.product.system_ext.device "RE5C46L1"
                resetprop ro.product.product.model "RMX3852"
                resetprop ro.product.model "RMX3852"
                resetprop ro.product.system.model "RMX3852"
                resetprop ro.product.system_ext.model "RMX3852"
                resetprop ro.product.vendor.model "RMX3852"
                resetprop ro.product.odm.model "RMX3852"
                resetprop ro.boot.hardware.revision "CN"
                ;;
            "23631")
            # realme GT6 CN (divo)
                echo "Realme GT6" > /config/usb_gadget/g1/strings/0x409/product
                resetprop ro.product.device "RE5C4FL1"
                resetprop ro.product.system.device "RMX3800"
                resetprop ro.product.vendor.device "RE5C4FL1"
                resetprop ro.product.odm.device "RE5C4FL1"
                resetprop ro.product.product.device "RE5C4FL1"
                resetprop ro.product.system_ext.device "RE5C4FL1"
                resetprop ro.product.product.model "RMX3800"
                resetprop ro.product.model "RMX3800"
                resetprop ro.product.system.model "RMX3800"
                resetprop ro.product.system_ext.model "RMX3800"
                resetprop ro.product.vendor.model "RMX3800"
                resetprop ro.product.odm.model "RMX3800"
                resetprop ro.boot.hardware.revision "CN"
                ;;
            "23718")
            # realme GT6 Global (bale)
                echo "Realme GT6" > /config/usb_gadget/g1/strings/0x409/product
                resetprop ro.product.device "RE5CA6L1"
                resetprop ro.product.system.device "RMX3851"
                resetprop ro.product.vendor.device "RE5CA6L1"
                resetprop ro.product.odm.device "RE5CA6L1"
                resetprop ro.product.product.device "RE5CA6L1"
                resetprop ro.product.system_ext.device "RE5CA6L1"
                resetprop ro.product.product.model "RMX3851"
                resetprop ro.product.model "RMX3851"
                resetprop ro.product.system.model "RMX3851"
                resetprop ro.product.system_ext.model "RMX3851"
                resetprop ro.product.vendor.model "RMX3851"
                resetprop ro.product.odm.model "RMX3851"
                resetprop ro.boot.hardware.revision "GL"
                ;;
            "24687")
            # realme GT6T (bale)
                echo "Realme GT6T" > /config/usb_gadget/g1/strings/0x409/product
                resetprop ro.product.device "RE606FL1"
                resetprop ro.product.system.device "RMX3853"
                resetprop ro.product.vendor.device "RE606FL1"
                resetprop ro.product.odm.device "RE606FL1"
                resetprop ro.product.product.device "RE606FL1"
                resetprop ro.product.system_ext.device "RE606FL1"
                resetprop ro.product.product.model "RMX3853"
                resetprop ro.product.model "RMX3853"
                resetprop ro.product.system.model "RMX3853"
                resetprop ro.product.system_ext.model "RMX3853"
                resetprop ro.product.vendor.model "RMX3853"
                resetprop ro.product.odm.model "RMX3853"
                resetprop ro.boot.hardware.revision "GL"
                ;;
             "23851")
            # oneplus Ace5 
                echo "OnePlus Ace5" > /config/usb_gadget/g1/strings/0x409/product
                resetprop ro.product.device "OP5D2BL1"
                resetprop ro.product.system.device "PKG110"
                resetprop ro.product.vendor.device "OP5D2BL1"
                resetprop ro.product.odm.device "OP5D2BL1"
                resetprop ro.product.product.device "OP5D2BL1"
                resetprop ro.product.system_ext.device "OP5D2BL1"
                resetprop ro.product.product.model "PKG110"
                resetprop ro.product.model "PKG110"
                resetprop ro.product.system.model "PKG110"
                resetprop ro.product.system_ext.model "PKG110"
                resetprop ro.product.vendor.model "PKG110"
                resetprop ro.product.odm.model "PKG110"
                resetprop ro.boot.hardware.revision "CN"
                ;;
             "23867")
            # oneplus 13R 
                echo "OnePlus 13R" > /config/usb_gadget/g1/strings/0x409/product
                resetprop ro.product.device "OP5D3BL1"
                resetprop ro.product.system.device "CPH2691"
                resetprop ro.product.vendor.device "OP5D3BL1"
                resetprop ro.product.odm.device "OP5D3BL1"
                resetprop ro.product.product.device "OP5D3BL1"
                resetprop ro.product.system_ext.device "OP5D3BL1"
                resetprop ro.product.product.model "CPH2691"
                resetprop ro.product.model "CPH2691"
                resetprop ro.product.system.model "CPH2691"
                resetprop ro.product.system_ext.model "CPH2691"
                resetprop ro.product.vendor.model "CPH2691"
                resetprop ro.product.odm.model "CPH2691"
                resetprop ro.boot.hardware.revision "IN"
                ;;
esac
exit 0
