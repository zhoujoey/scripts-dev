#!/bin/bash

# CMake
sudo apt-get install cmake libgoogle-glog-dev libgflags-dev
sudo apt-get install libatlas-base-dev
sudo apt-get install libeigen3-dev
sudo apt-get install libsuitesparse-dev

cd ~/pkgs
git clone https://ceres-solver.googlesource.com/ceres-solver
cd ceres-solver
git checkout 2.1.0
mkdir build && cd build 
cmake ../
make -j
