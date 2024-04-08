rm -rf .repo/local_manifest
# Clone local_manifests repository
git clone https://github.com/rktdnt/local_manifests --depth 1 -b lance .repo/local_manifests
repo init -u https://github.com/PixelOS-AOSP/manifest.git -b fourteen --git-lfs
/opt/crave/resync.sh

# extras be4 beelding
rm -rf hardware/mediatek
rm -rf device/mediatek/sepolicy_vndr
git clone https://github.com/LineageOS/android_hardware_mediatek hardware/mediatek -b lineage-21
git clone https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr device/mediatek/sepolicy_vndr -b lineage-21

# patches
rm -rf frameworks/av
git clone --depth=1 https://github.com/cheldump/frameworks_av frameworks/av
rm -rf frameworks/native
git clone --depth=1 https://github.com/PixelOS-AOSP/frameworks_native frameworks/native

# trees
rm -rf */xiaomi
git clone --depth=1 https://github.com/cheldump/device_xiaomi_lancelot device/xiaomi/lancelot
git clone --depth=1 https://github.com/cheldump/vendor_xiaomi_lancelot vendor/xiaomi/lancelot
git clone --depth=1 https://gitlab.com/MT6768Lab/KernelTree kernel/xiaomi/lancelot
git clone --depth=1 https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

#beelding
. build/envsetup.sh
lunch aosp_lancelot-ap1a-userdebug
make bacon
