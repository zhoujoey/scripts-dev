#!/bin/bash

# Install minimal prerequisites (Ubuntu 18.04 as reference)
sudo apt update && sudo apt install -y cmake g++ wget unzip
 
# Download and unpack sources
cd ~/pkgs
git clone https://github.com/opencv/opencv
cd opencv
#git checkout 3.4.9
git checkout 4.8.1
 
# Create build directory
mkdir -p build && cd build
 
# Configure
cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=/usr/local -DENABLE_PRECOMPILED_HEADERS=OFF -DWITH_FFMPEG=OFF ..
 
# Build
cmake ../
make -j
sudo make install
