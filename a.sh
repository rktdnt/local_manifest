rm -rf .repo/local_manifest

# Clone local_manifests repository
git clone https://github.com/rktdnt/local_manifests --depth 1 -b lime .repo/local_manifests
/opt/crave/resync.sh

# trees
rm -rf */xiaomi
git clone --depth=1 https://github.com/cheldump/device_xiaomi_sm6115-common device/xiaomi/sm6115-common
git clone --depth=1 https://github.com/cheldump/vendor_xiaomi_sm6115-common vendor/xiaomi/sm6115-common
git clone --depth=1 https://github.com/cheldump/device_xiaomi_lime device/xiaomi/lime
git clone --depth=1 https://github.com/cheldump/vendor_xiaomi_lime vendor/xiaomi/lime
git clone --depth=1 https://github.com/liliumproject/kernel_xiaomi_chime kernel/xiaomi/sm6115
git clone --depth=1 https://github.com/cheldump/android_hardware_xiaomi hardware/xiaomi

#lu kanjut
rm -rf packages/resources/devicesettings
git clone --depth=1 https://github.com/PixelExperience/packages_resources_devicesettings packages/resources/devicesettings
rm -rf hardware/st/nfc
git clone --depth=1 https://github.com/AOSPA/android_hardware_st_nfc hardware/st/nfc

#beelding
. build/envsetup.sh
lunch aosp_lime-ap1a-userdebug
make bacon
