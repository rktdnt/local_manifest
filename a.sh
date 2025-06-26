#
/opt/crave/resync.sh

# signing
#rm -rf vendor/lineage-priv/keys
#git clone --depth=1 https://github.com/rktdnt/p3 vendor/lineage-priv/keys

#git clone https://github.com/rktdnt/p3 -b 15.1 vendor/extra

# trees
rm -rf */xiaomi
git clone --depth=1 https://github.com/plrine/device_xiaomi_pond device/xiaomi/pond -b lineage-21
git clone --depth=1 https://github.com/plrine/device_xiaomi_pond-kernel device/xiaomi/pond-kernel -b 14
git clone --depth=1 https://github.com/plrine/vendor_xiaomi_pond vendor/xiaomi/pond -b lineage-21

git clone --depth=1 https://github.com/LineageOS/android_hardware_mediatek hardware/mediatek -b lineage-21
git clone --depth=1 https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi -b lineage-21
git clone --depth=1 https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr device/mediatek/sepolicy_vndr -b lineage-21

#beelding
. build/envsetup.sh
lunch lineage_pond-ap2a-eng
make bacon -j$(nproc --all)
