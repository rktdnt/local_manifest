# sync
repo init -u https://github.com/RisingTechOSS/android -b fourteen --git-lfs
/opt/crave/resync.sh

git clone --depth=1 https://github.com/rktdnt/p3 vendor/lineage-priv/keys

# extras be4 beelding
rm -rf hardware/mediatek
git clone https://github.com/LineageOS/android_hardware_mediatek hardware/mediatek -b lineage-21

# patches
#rm -rf frameworks/av
#git clone --depth=1 https://github.com/cheldump/frameworks_av frameworks/av

# trees
rm -rf */xiaomi
git clone --depth=1 https://github.com/cheldump/device_xiaomi_lancelot device/xiaomi/lancelot
git clone --depth=1 https://github.com/cheldump/vendor_xiaomi_lancelot vendor/xiaomi/lancelot -b abc
git clone --depth=1 https://gitlab.com/MT6768Lab/KernelTree kernel/xiaomi/lancelot -b 14
git clone --depth=1 https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

#beelding
#beelding
. build/envsetup.sh
riseup lancelot userdebug
rise b
