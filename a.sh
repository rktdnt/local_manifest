rm -rf .repo/local_manifest
# Clone local_manifests repository
git clone https://github.com/rktdnt/local_manifests --depth 1 -b lance .repo/local_manifests
/opt/crave/resync.sh

# extras be4 beelding
rm -rf hardware/mediatek
git clone https://github.com/LineageOS/android_hardware_mediatek hardware/mediatek -b lineage-21

# patches
rm -rf frameworks/av
git clone --depth=1 https://github.com/cheldump/frameworks_av frameworks/av

# trees
rm -rf */xiaomi
git clone --depth=1 https://github.com/cheldump/device_xiaomi_lancelot device/xiaomi/lancelot
git clone --depth=1 https://github.com/cheldump/vendor_xiaomi_lancelot vendor/xiaomi/lancelot
git clone --depth=1 https://gitlab.com/MT6768Lab/KernelTree kernel/xiaomi/lancelot -b 14
git clone --depth=1 https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

#beelding
. build/envsetup.sh
lunch aosp_lancelot-ap1a-userdebug
make installclean && make bacon
