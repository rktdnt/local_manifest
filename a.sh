rm -rf *
# Clone local_manifests repository
repo init --depth=1 --no-repo-verify -u https://github.com/SuperiorExtended/manifest -b UDC --git-lfs -g default,-mips,-darwin,-notdefault
git clone https://github.com/rktdnt/local_manifests --depth 1 -b lineage-21 .repo/local_manifests
repo sync -c -j$(nproc --all) --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync
repo sync -c --no-clone-bundle --optimized-fetch --prune --force-sync -j$(nproc --all)
. build/envsetup.sh
lunch superior_tissot-userdebug
mka bacon
