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

# clone my nvim config
nvim_dir=$HOME/.config/nvim
if [ -d $nvim_dir ]; then
	mv $nvim_dir ~/.config/nvim_old
fi
git clone https://github.com/ChappieM/nvim.git $nvim_dir
