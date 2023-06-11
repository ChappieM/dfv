#! /bin/bash

# clone my nvim config
nvim_dir=$HOME/.config/nvim
if [ -d $nvim_dir ]; then
	mv $nvim_dir ~/.config/nvim_old
fi
git clone https://github.com/ChappieM/nvim.git $nvim_dir

# Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
