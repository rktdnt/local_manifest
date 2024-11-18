#
/opt/crave/resync.sh

# signing
#rm -rf vendor/lineage-priv/keys
#git clone --depth=1 https://github.com/rktdnt/p3 vendor/lineage-priv/keys

#rm -rf vendor/aosp/signing/keys
#git clone https://github.com/rktdnt/p3 -b pos vendor/aosp/signing/keys

# fp
#rm -rf vendor/extra
#git clone https://github.com/plrine/fp vendor/extra

# trees
rm -rf */xiaomi
git clone --depth=1 https://github.com/plrine/android_device_xiaomi_msm8953-common device/xiaomi/msm8953-common
git clone --depth=1 https://github.com/plrine/proprietary_vendor_xiaomi_msm8953-common vendor/xiaomi/msm8953-common
git clone --depth=1 https://github.com/plrine/android_device_xiaomi_tissot device/xiaomi/tissot -b temp
git clone --depth=1 https://github.com/plrine/proprietary_vendor_xiaomi_tissot vendor/xiaomi/tissot -b temp
git clone --depth=1 https://github.com/plrine/android_kernel_xiaomi_msm8953 kernel/xiaomi/msm8953
git clone --depth=1 https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

#cd vendor/aosp
#git fetch https://github.com/pos-gm/vendor_aosp && git cherry-pick 2a8e8eeb913c27618f903a88d243fa268b6a4cbe
#cd ../..

# hals
#git clone --depth=1 https://github.com/LineageOS/android_hardware_qcom_media -b lineage-21.0-caf-msm8996 hardware/qcom-caf/msm8996/media
#git clone --depth=1 https://github.com/LineageOS/android_hardware_qcom_audio -b lineage-21.0-caf-msm8996 hardware/qcom-caf/msm8996/audio
#git clone --depth=1 https://github.com/LineageOS/android_hardware_qcom_display -b lineage-21.0-caf-msm8996 hardware/qcom-caf/msm8996/display

#beelding
. build/envsetup.sh
lunch lineage_tissot-ap2a-user
mka bacon -j$(nproc --all)
