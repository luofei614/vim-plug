#!/bin/bash
BASEDIR=$(dirname $0)
cd $BASEDIR
CURRENT_DIR=`pwd`

lnif() {
  if [ -e "$1"  ]; then
    ln -sf "$1" "$2"
  fi

}


echo "Step1: backing up current vim config"
today=`date +%Y%m%d`
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc $HOME/.vimrc.bundles; do [ -e $i  ] && [ ! -L $i  ] && mv $i $i.$today; done
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc $HOME/.vimrc.bundles; do [ -L $i  ] && unlink $i ; done


echo "Step2: setting up symlinks"
lnif $CURRENT_DIR/.vimrc $HOME/.vimrc
lnif "$CURRENT_DIR/" "$HOME/.vim"


echo "Step3: update/install plugins using vim-plug"
system_shell=$SHELL
export SHELL="/bin/sh"
vim -u $HOME/.vimrc +PlugInstall! +PlugClean! +qall
export SHELL=$system_shell


echo "Step4: install eshint"
echo "It will take a long time, just be patient!"
echo "npm i -g eslint@es6jsx --registry=http://registry.npm.taobao.org"
npm i -g eshint@es6jsx --registry=http://registry.npm.taobao.org
echo "Install Done!"
