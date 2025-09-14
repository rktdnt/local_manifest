#
repo init -u https://github.com/RisingOS-Revived/android -b qpr2 --git-lfs
/opt/crave/resync.sh

# signing
rm -rf vendor/lineage-priv/keys
git clone --depth=1 https://github.com/rktdnt/p3 vendor/lineage-priv/keys

rm -rf hardware/qcom/sm7250/Android.bp
rm -rf hardware/qcom/sm8150/Android.bp


#rm -rf vendor/aosp/signing/keys
#git clone https://github.com/rktdnt/p3 -b pos vendor/aosp/signing/keys

# trees
rm -rf */xiaomi
git clone --depth=1 https://github.com/plrine/android_device_xiaomi_surya device/xiaomi/surya
git clone --depth=1 https://github.com/plrine/proprietary_vendor_xiaomi_surya vendor/xiaomi/surya
git clone --depth=1 https://github.com/plrine/kernel_xiaomi_surya kernel/xiaomi/surya
git clone --depth=1 https://github.com/plrine/android_hardware_xiaomi hardware/xiaomi

# patches
#cd vendor/aosp
#git fetch https://github.com/pos-gm/vendor_aosp && git cherry-pick 2a8e8eeb913c27618f903a88d243fa268b6a4cbe
#cd ../..

#beelding
. build/envsetup.sh
riseup surya user
rise b
