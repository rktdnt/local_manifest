rm -rf .repo/local_manifest
# Clone local_manifests repository
git clone https://github.com/rktdnt/local_manifests --depth 1 -b lance .repo/local_manifests
repo init -u https://github.com/crdroidandroid/android.git -b 14.0 --git-lfs
/opt/crave/resync.sh

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
brunch tissot
make installclean && make bacon