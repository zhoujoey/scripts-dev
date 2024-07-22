#!/bin/bash

CPU="x86"

if [ "$1" == "arm" ]; then
  echo " usage: $0 [use arm]"
  CPU = arm
fi

sudo apt update

echo "install packages"
sudo apt install vim  git docker gimp curl  docker.io ssh zsh net-tools libeigen3-dev usbutils kazam cheese
sudo apt install libgoogle-glog-dev libeigen3-dev libpcl-dev libyaml-cpp-dev

# https://www.google.com/intl/en_sg/chrome/
#echo "install chrome"
#sudo apt-get install google-chrome-stable


echo "install sogou pinyin"
sudo apt install fcitx fcitx-googlepinyin

echo "install meld"
sudo apt-get install meld

echo "install terminator"
sudo apt-get install terminator

echo "okar pdf reader"
sudo apt install okular


echo "download clash"
#if [ "CPU" == "arm" ]; then
#  wget https://github.com/clash-verge-rev/clash-verge-rev/releases/download/v1.6.2/clash-verge_1.6.2_arm64.deb
#else 
#  wget https://github.com/clash-verge-rev/clash-verge-rev/releases/download/v1.6.2/clash-verge_1.6.2_amd64.deb
#fi

#sudo dpkg -i clash*.deb

#cp clash-verge.yaml  ~/.local/share/io.github.clash-verge-rev.clash-verge-rev/


echo "download vscode"
#if [ "CPU" == "arm" ]; then
#  wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-arm64
#else 
#  wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
#fi

#sudo dpkg -i code*.deb


