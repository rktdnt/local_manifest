#!/bin/bash

set -e
#Credit to Meghthedev for the initial script 
# Initialize repo with specified manifest
repo init -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs
crave set --projectID 72

crave run --no-patch -- "curl -fsSL https://raw.githubusercontent.com/rktdnt/local_manifest/pond/a.sh | bash" 

# Clean up
rm -rf tissot/

# Pull generated zip files
crave pull out/target/product/*/*.zip 

# Pull generated img files
crave pull out/target/product/*/*.img
