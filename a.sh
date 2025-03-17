#
repo init -u https://github.com/halcyonproject/manifest -b 15.1 --git-lfs
/opt/crave/resync.sh

# signing
#rm -rf vendor/lineage-priv/keys
#git clone --depth=1 https://github.com/rktdnt/p3 vendor/lineage-priv/keys

git clone https://github.com/rktdnt/p3 -b 15.1 vendor/extra

# trees
rm -rf */realme
git clone --depth=1 https://github.com/plrine/android_device_realme_RM6785-common device/realme/RM6785-common
git clone --depth=1 https://github.com/plrine/device_realme_RMX2001L1 device/realme/RMX2001L1
git clone --depth=1 https://github.com/plrine/proprietary_vendor_realme_RM6785-common vendor/realme/RM6785-common

git clone --depth=1 https://github.com/halcyonproject/hardware_mediatek hardware/mediatek -b 15.1
git clone --depth=1 https://github.com/halcyonproject/device_mediatek_sepolicy_vndr device/mediatek/sepolicy_vndr -b 15.1

#beelding
. build/envsetup.sh
lunch halcyon_tissot-ap4a-userdebug
make carthage -j$(nproc --all)
