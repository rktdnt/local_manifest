# extras be4 beelding
rm -rf hardware/mediatek
rm -rf device/mediatek/sepolicy_vndr
git clone https://github.com/LineageOS/android_hardware_mediatek hardware/mediatek -b lineage-21
git clone https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr device/mediatek/sepolicy_vndr -b lineage-21

# trees
rm -rf */xiaomi
git clone --depth=1 https://github.com/cheldump/android_device_xiaomi_lancelot device/xiaomi/lancelot
git clone --depth=1 https://github.com/cheldump/proprietary_vendor_xiaomi_lancelot vendor/xiaomi/lancelot
git clone --depth=1 https://github.com/cheldump/android_device_xiaomi_mt6768-common device/xiaomi/mt6768-common
git clone --depth=1 https://github.com/cheldump/proprietary_vendor_xiaomi_mt6768-common vendor/xiaomi/mt6768-common
git clone --depth=1 https://gitlab.com/MT6768Lab/KernelTree kernel/xiaomi/mt6768
git clone --depth=1 https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi