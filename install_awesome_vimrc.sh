#!/bin/sh
set -e

cd ~/myVimConfig

echo 'set runtimepath+=~/myVimConfig

source ~/myVimConfig/vimrcs/basic.vim
source ~/myVimConfig/vimrcs/filetypes.vim
source ~/myVimConfig/vimrcs/plugins_config.vim
source ~/myVimConfig/vimrcs/extended.vim

try
source ~/myVimConfig/my_configs.vim
catch
endtry' > ~/.vimrc

cp -r  ~/myVimConfig/my_plugins/* ~/.vim/
echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
