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
#for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc $HOME/.vimrc.bundles; do [ -e $i  ] && [ ! -L $i  ] && mv $i $i.$today; done
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc $HOME/.eslintrc.json /Users/lynn/.eslintrc.js $HOME/.tern-config $HOME/.vimrc.bundles; do [ -L $i  ] && unlink $i ; done


echo "Step2: setting up symlinks"
lnif $CURRENT_DIR/config/vimrc $HOME/.vimrc
lnif "$CURRENT_DIR/" "$HOME/.vim"
#lnif $CURRENT_DIR/config/eslintrc.json $HOME/.eslintrc.json
lnif $CURRENT_DIR/config/eslintrc.js $HOME/.eslintrc.js
lnif $CURRENT_DIR/config/tern-config $HOME/.tern-config

echo "Step3: update/install plugins using vim-plug"
system_shell=$SHELL
export SHELL="/bin/sh"
vim +PlugInstall! +PlugClean! +qall
export SHELL=$system_shell


echo "Step4: install eslint"
echo "It will take a long time, just be patient!"
echo "npm i -g eslint --registry=http://registry.npm.taobao.org"
npm i -g eslint eslint_d eslint-plugin-babel eslint-plugin-react eslint-plugin-react-native babel-eslint eslint-config-airbnb  --registry=http://registry.npm.taobao.org
echo "Install Done!"
