#
repo init -u https://github.com/RisingOS-Revived/android -b sixteen --git-lfs
/opt/crave/resync.sh

# signing
rm -rf vendor/lineage-priv/keys
git clone --depth=1 https://github.com/rktdnt/p3 vendor/lineage-priv/keys

#rm -rf vendor/aosp/signing/keys
#git clone https://github.com/rktdnt/p3 -b pos vendor/aosp/signing/keys

# trees
rm -rf */xiaomi
git clone --depth=1 https://github.com/plrine/android_device_xiaomi_surya device/xiaomi/surya
git clone --depth=1 https://gitlab.com/crdroidandroid/proprietary_vendor_xiaomi_surya vendor/xiaomi/surya
git clone --depth=1 https://github.com/crdroidandroid/android_kernel_xiaomi_surya kernel/xiaomi/surya
git clone --depth=1 https://github.com/crdroidandroid/android_hardware_xiaomi hardware/xiaomi
git clone --depth=1 https://github.com/bulla0x/leica_camera vendor/xiaomi/miuicamera

# ant
git clone --depth=1 https://github.com/LineageOS/android_external_ant-wireless_ant_client external/ant-wireless/ant_client
git clone --depth=1 https://github.com/LineageOS/android_external_ant-wireless_ant_native external/ant-wireless/ant_native
git clone --depth=1 https://github.com/LineageOS/android_external_ant-wireless_ant_service external/ant-wireless/ant_service
git clone --depth=1 https://github.com/LineageOS/android_external_ant-wireless_hidl external/ant-wireless/hidl

# patches
#cd vendor/aosp
#git fetch https://github.com/pos-gm/vendor_aosp && git cherry-pick 2a8e8eeb913c27618f903a88d243fa268b6a4cbe
#cd ../..

#beelding
. build/envsetup.sh
riseup surya user
rise b
