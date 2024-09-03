#!/bin/bash

set -e
#Credit to Meghthedev for the initial script 
# Initialize repo with specified manifest
repo init -u https://github.com/DerpFest-AOSP/manifest -b 14
crave set --projectID 64

crave run --no-patch -- "wget -O a.sh https://raw.githubusercontent.com/rktdnt/local_manifest/tissot/a.sh && chmod +x a.sh && ./a.sh" 

# Clean up
rm -rf tissot/

# Pull generated zip files
crave pull out/target/product/*/*.zip 

# Pull generated img files
crave pull out/target/product/*/*.img
