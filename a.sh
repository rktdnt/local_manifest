# sync
/opt/crave/resync.sh

# signing
rm -rf vendor/lineage-priv/keys
git clone --depth=1 https://github.com/rktdnt/p3 vendor/lineage-priv/keys

#rm -rf vendor/aosp/signing/keys
#git clone https://github.com/rktdnt/p3 -b pos vendor/aosp/signing/keys

# extras be4 beelding
rm -rf hardware/mediatek
git clone https://github.com/LineageOS/android_hardware_mediatek hardware/mediatek -b lineage-21
rm -rf device/mediatek/sepolicy_vndr
git clone https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr device/mediatek/sepolicy_vndr -b lineage-21 

# trees
rm -rf */xiaomi
git clone --depth=1 https://github.com/plrine/device_xiaomi_lancelot device/xiaomi/lancelot
git clone --depth=1 https://github.com/plrine/vendor_xiaomi_lancelot vendor/xiaomi/lancelot
git clone --depth=1 https://github.com/plrine/kernel_xiaomi_lancelot kernel/xiaomi/lancelot
git clone --depth=1 https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

#beelding
. build/envsetup.sh
riseup lancelot user
rise b
