cd ~/pkgs

git clone -b 1.14.0 https://github.com/ceres-solver/ceres-solver.git 

cd ceres-solver && mkdir build && cd build && cmake .. -DCXX11=ON

make -j 6 && sudo make install 

sudo ldconfig

cd ~/pkgs

git clone -b 4.2.0 https://github.com/borglab/gtsam
cd gtsam
mkdir build
cd build
cmake ..
make -j6
sudo make install


cd ~/pkgs
git clone https://github.com/Livox-SDK/Livox-SDK2.git
cd ./Livox-SDK2/
mkdir build
cd build
cmake .. && make -j
sudo make install


cd ~/pkgs
git clone https://gitlab.com/libeigen/eigen.git -b 3.4.0
cd eigen
mkdir build
cd build
cmake .. && make -j
sudo make install


cd ~/pkgs
git clone https://github.com/opencv/opencv -b 4.8.0
cd opencv
mkdir build
cd build
cmake .. && make -j
sudo make install
