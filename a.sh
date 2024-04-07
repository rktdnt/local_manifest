rm -rf *
# Clone local_manifests repository
repo init -u https://github.com/PixelOS-AOSP/manifest.git -b fourteen --git-lfs
git clone https://github.com/rktdnt/local_manifests --depth 1 -b lance .repo/local_manifests
repo sync -c -j$(nproc --all) --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync
repo sync -c --no-clone-bundle --optimized-fetch --prune --force-sync -j$(nproc --all)

# extras be4 beelding
rm -rf hardware/mediatek
rm -rf device/mediatek/sepolicy_vndr
git clone https://github.com/LineageOS/android_hardware_mediatek hardware/mediatek -b lineage-21
git clone https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr device/mediatek/sepolicy_vndr -b lineage-21

# patches
cd frameworks/native || exit 1
curl https://github.com/AOSP-14-RMX2020/platform_frameworks_native/commit/804633ed9ffbec2e3b6e038b5ac3357e1f681e67.patch | git am -3
cd ../..

cd frameworks/av && git fetch https://github.com/orkunsdumps/frameworks_av_pos && git cherry-pick a5a645e^..1715e1b

#beelding
. build/envsetup.sh
lunch aosp_lancelot-userdebug
mka bacon
