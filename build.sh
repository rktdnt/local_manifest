#!/bin/bash

set -e
#Credit to Meghthedev for the initial script 
# Initialize repo with specified manifest
repo init -u https://github.com/accupara/los22.git -b lineage-22.0 --git-lfs
crave set --projectID 93

crave run --no-patch -- "curl -fsSL https://raw.githubusercontent.com/rktdnt/local_manifest/tissot/a.sh | bash" 

# Clean up
rm -rf tissot/

# Pull generated zip files
crave pull out/target/product/*/*.zip 

# Pull generated img files
crave pull out/target/product/*/*.img
