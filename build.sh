#!/bin/bash

set -e
#Credit to Meghthedev for the initial script 

# Initialize repo with specified manifest
repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs

# Run inside foss.crave.io devspace, in the project folder
# Remove existing local_manifests
crave run --no-patch -- "rm -rf .repo/local_manifests && \

# Initialize repo with specified manifest
repo init -u https://github.com/crdroidandroid/android.git -b 14.0 --git-lfs \

# Clone local_manifests repository
git clone https://github.com/rktdnt/local_manifest --depth 1 -b lineage-21.0 .repo/local_manifests && \

# Sync the repositories
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags && \ 

# Set up build environment
source build/envsetup.sh && \

# Lunch configuration
lunch lineage_tissot-userdebug && \

# Build the ROM
mka bacon && \
echo "Date and time:" && \

# Print out/build_date.txt
cat out/build_date.txt; echo \

# Print SHA256
sha256sum out/target/product/*/*.zip"

# Clean up
rm -rf tissot/

# Pull generated zip files
crave pull out/target/product/*/*.zip 

# Pull generated img files
crave pull out/target/product/*/*.img

curl --progress-bar -T "tissot/*.zip" https://pixeldrain.com/api/file/ | cat
