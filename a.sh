#
repo init -u https://github.com/LineageOS/android.git -b lineage-22.0 --git-lfs
/opt/crave/resync.sh

# signing
rm -rf vendor/lineage-priv/keys
git clone --depth=1 https://github.com/rktdnt/p3 vendor/lineage-priv/keys

#rm -rf vendor/derp/signing/keys
#git clone https://github.com/rktdnt/p3 -b pos vendor/derp/signing/keys

# trees
rm -rf */xiaomi
git clone --depth=1 https://github.com/plrine/android_device_xiaomi_msm8953-common device/xiaomi/msm8953-common
git clone --depth=1 https://github.com/plrine/proprietary_vendor_xiaomi_msm8953-common vendor/xiaomi/msm8953-common
git clone --depth=1 https://github.com/plrine/android_device_xiaomi_tissot device/xiaomi/tissot
git clone --depth=1 https://github.com/plrine/proprietary_vendor_xiaomi_tissot vendor/xiaomi/tissot
git clone --depth=1 https://github.com/plrine/android_kernel_xiaomi_msm8953 kernel/xiaomi/msm8953
git clone --depth=1 https://github.com/plrine/hardware_xiaomi hardware/xiaomi

# hals
#git clone --depth=1 https://github.com/LineageOS/android_hardware_qcom_media -b lineage-21.0-caf-msm8996 hardware/qcom-caf/msm8996/media
#git clone --depth=1 https://github.com/LineageOS/android_hardware_qcom_audio -b lineage-21.0-caf-msm8996 hardware/qcom-caf/msm8996/audio
#git clone --depth=1 https://github.com/LineageOS/android_hardware_qcom_display -b lineage-21.0-caf-msm8996 hardware/qcom-caf/msm8996/display

#beelding
. build/envsetup.sh
lunch lineage_tissot-ap3a-user
make bacon -j$(nproc --all)
