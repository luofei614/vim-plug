BASEDIR=$(dirname $0)
cd $BASEDIR
CURRENT_DIR=`pwd`

echo "Step1: backing up current vim config"
today=`date +%Y%m%d`
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc $HOME/.vimrc.bundles $HOME/.config/nvim/init.vim $HOME/.config/nvim; do [ -e $i  ] && [ ! -L $i  ] && mv $i $i.$today; done
#原有配置还是要删除或者备份的不然会影响到后续的安装
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc $HOME/.eslintrc.json /Users/lynn/.eslintrc.js $HOME/.npmrc $HOME/.tern-config $HOME/.vimrc.bundles $HOME/.config/nvim/init.vim $HOME/.config/nvim; do [ -L $i  ] && unlink $i ; done


echo "Step2: setting up symlinks"
unlink $HOME/.vimrc
unlink "$HOME/.config/nvim"
unlink $HOME/.config/nvim/init.vim
unlink "$HOME/.vim"
unlink $HOME/.eslintrc.js
unlink $HOME/.tern-config
