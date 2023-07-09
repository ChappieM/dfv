#! /bin/bash

sudo apt install -y cmake automake libtool libtool-bin
cd /tmp
git clone https://github.com/neovim/neovim
git checkout stable
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
