crave run --no-patch -- "rm -rf .repo/local_manifests && \
repo init --depth=1 --no-repo-verify -u https://github.com/crdroidandroid/android -b 14.0 --git-lfs -g default,-mips,-darwin,-notdefault && \
git clone https://github.com/rktdnt/local_manifests --depth 1 -b lineage-21 .repo/local_manifests && \
repo sync -c -j $(nproc --all) --force-sync && \
source build/envsetup.sh && \
lunch lineage_tissot-userdebug && \
make bacon"