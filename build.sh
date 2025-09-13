#!/bin/bash

set -e
#Credit to Meghthedev for the initial script 
# Initialize repo with specified manifest
repo init -u https://github.com/RisingOS-Revived/android -b fifteen --git-lfs
crave set --projectID 86

crave run --no-patch -- "curl -fsSL https://raw.githubusercontent.com/rktdnt/local_manifest/surya/a.sh | bash" 

# Clean up
rm -rf surya/

# Pull generated zip files
crave pull out/target/product/*/*.zip 

# Pull generated img files
crave pull out/target/product/*/*.img
