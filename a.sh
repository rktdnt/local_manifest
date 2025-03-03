#
repo init -u https://github.com/superior-lts/manifest.git -b thirteen --depth=1
/opt/crave/resync.sh

# signing
rm -rf vendor/lineage-priv/keys
git clone --depth=1 https://github.com/rktdnt/p3 vendor/lineage-priv/keys

#rm -rf vendor/aosp/signing/keys
#git clone https://github.com/rktdnt/p3 -b pos vendor/aosp/signing/keys

# wlan
#rm -rf hardware/qcom-caf/wlan
#git clone --depth=1 https://github.com/plrine/android_hardware_qcom_wlan hardware/qcom-caf/wlan

# trees
rm -rf */xiaomi
git clone --depth=1 https://github.com/plrine/android_device_xiaomi_msm8953-common device/xiaomi/msm8953-common -b lineage-20
git clone --depth=1 https://github.com/plrine/proprietary_vendor_xiaomi_msm8953-common vendor/xiaomi/msm8953-common -b lineage-20
git clone --depth=1 https://github.com/plrine/android_device_xiaomi_tissot device/xiaomi/tissot -b lineage-20
git clone --depth=1 https://github.com/plrine/proprietary_vendor_xiaomi_tissot vendor/xiaomi/tissot -b lineage-20
git clone --depth=1 https://github.com/plrine/android_kernel_xiaomi_msm8953 kernel/xiaomi/msm8953
git clone --depth=1 https://github.com/plrine/hardware_xiaomi hardware/xiaomi -b lineage-20
#git clone --depth=1 https://github.com/LineageOS/android_hardware_sony_timekeep hardware/sony/timekeep

# patches
#cd vendor/aosp
#git fetch https://github.com/pos-gm/vendor_aosp && git cherry-pick 2a8e8eeb913c27618f903a88d243fa268b6a4cbe
#cd ../..

git clone --depth=1 https://github.com/LineageOS/android_packages_resources_devicesettings packages/resources/devicesettings -b lineage-20.0

# hals
#rm -rf hardware/qcom-caf/msm8996/display
git clone --depth=1 https://github.com/LineageOS/android_hardware_qcom_media -b lineage-20.0-caf-msm8996 hardware/qcom-caf/msm8996/media
git clone --depth=1 https://github.com/LineageOS/android_hardware_qcom_audio -b lineage-20.0-caf-msm8996 hardware/qcom-caf/msm8996/audio
git clone --depth=1 https://github.com/LineageOS/android_hardware_qcom_display -b lineage-20.0-caf-msm8996 hardware/qcom-caf/msm8996/display

#beelding
. build/envsetup.sh
lunch superior_tissot-user
m bacon -j$(nproc --all)
