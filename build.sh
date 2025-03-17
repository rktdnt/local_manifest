#!/bin/bash

set -e
#Credit to Meghthedev for the initial script 
# Initialize repo with specified manifest
repo init -u https://android.googlesource.com/platform/manifest -b android-15.0.0_r17
crave set --projectID 35

crave run --no-patch -- "curl -fsSL https://raw.githubusercontent.com/rktdnt/local_manifest/rmx2001/a.sh | bash" 

# Clean up
rm -rf tissot/

# Pull generated zip files
crave pull out/target/product/*/*.zip 

# Pull generated img files
crave pull out/target/product/*/*.img
