#!/bin/bash

set -e
#Credit to Meghthedev for the initial script 

# Initialize repo with specified manifest
repo init -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs

crave run --no-patch -- "wget -O a.sh https://raw.githubusercontent.com/rktdnt/local_manifest/lineage-21/a.sh && chmod +x a.sh && ./a.sh" 

# Clean up
rm -rf tissot/

# Pull generated zip files
crave pull out/target/product/*/*.zip 

# Pull generated img files
crave pull out/target/product/*/*.img