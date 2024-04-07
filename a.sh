rm -rf *
# Clone local_manifests repository
repo init -u https://github.com/PixelOS-AOSP/manifest.git -b fourteen --git-lfs
git clone https://github.com/rktdnt/local_manifests --depth 1 -b lance .repo/local_manifests
repo sync -c -j$(nproc --all) --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync
repo sync -c --no-clone-bundle --optimized-fetch --prune --force-sync -j$(nproc --all)
. build/envsetup.sh
lunch aosp_lancelot-userdebug
mka bacon
