#! /bin/bash

WORK_DIR='/var/tmp'
NVIM_APP_DIR='/nvim-app'

cd ${WORK_DIR}

# install neovim
ehoc "Install neovim"
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
rm nvim.appimage
mv squashfs-root /nvim-app
ln -s /nvim-app/AppRun /usr/bin/nvim

