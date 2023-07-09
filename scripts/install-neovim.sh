#! /bin/bash

WORK_DIR='/var/tmp'
NVIM_APP_DIR='~/my-apps/nvim'

cd ${WORK_DIR}

# install neovim
ehoc "Install neovim"
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
rm nvim.appimage

mkdir -p ${NVIM_APP_DIR}
mv squashfs-root ${NVIM_APP_DIR}
ln -s ${NVIM_APP_DIR}/AppRun /usr/bin/nvim
