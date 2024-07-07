#repo init -u https://github.com/RisingTechOSS/android -b fourteen --git-lfs
/opt/crave/resync.sh

# signing
rm -rf vendor/derp/signing/keys
git clone https://github.com/rktdnt/p3 -b pos vendor/derp/signing/keys

# trees
rm -rf */xiaomi
git clone --depth=1 https://github.com/cheldump/android_device_xiaomi_msm8953-common device/xiaomi/msm8953-common
git clone --depth=1 https://github.com/cheldump/proprietary_vendor_xiaomi_msm8953-common vendor/xiaomi/msm8953-common
git clone --depth=1 https://github.com/cheldump/android_device_xiaomi_tissot device/xiaomi/tissot
git clone --depth=1 https://github.com/cheldump/proprietary_vendor_xiaomi_tissot vendor/xiaomi/tissot
git clone --depth=1 https://github.com/xiaomi-msm8953-devs/android_kernel_xiaomi_msm8953 kernel/xiaomi/msm8953
git clone --depth=1 https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

#beelding
. build/envsetup.sh
lunch derp_tissot-user
mka derp
