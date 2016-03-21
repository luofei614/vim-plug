	

运行三个命令配置一个强大的VIM编辑器。  

     # mkdir -p ~/.vim/autoload
     #  curl -fLo ~/.vim/autoload/plug.vim \
          https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
     # curl -fLo ~/.vimrc \
          https://raw.githubusercontent.com/sherylynn/vim-plug/master/.vimrc

 然后打开vim 运行  :PlugInstall 就能安装上所有插件

 使用了原主人的配置2年了...终于今天自己定制化了一下
 删除了一些配置,增加了eshint等等,更时候react jsx开发

安装好后效果如下：
![enter image description here](https://github.com/sherylynn/vim-plug/raw/master/screenshot.png)

内置两种流行主题，默认是sublime风格的主题。

设置了很多方便的快捷键 

* F11 ：  在编辑器左侧打开文件浏览器， 再按一次F11则会关闭文件浏览器。 

* F12：   在编辑器右侧打开当前文件的函数列表， 再安一次F12关闭函数列表。函数列表是基于ctags的先需要在项目目录下运行 `ctags -R`  在VIM中按快捷键 F3 可以自动执行ctags命令。

* F2: 可以快速查函数手册， 如果当前VIM的光标在php的file_put_contents函数上，按一下F2 会自动打开PHP手册的网页。

* ctrl+p :   快速查找文件 ， 此功能基于ruby， 如果您环境没有ruby 请先安装ruby：
这个功能我给去了
* ctrl+f : 快速查找当前文件中的函数 

* ctrl+] ： 跳到函数声明出（自己定义的函数，非系统函数），会在当前界面打开函数声明文件，如果想新建个tab页再跳到函数声明处，可以用 `ctrl+\`

* 支持ctrl+a 全选  ctrl+c 复制  ctrl+v 粘贴  ctrl+x 剪切。ctrl+s 保存， ctrl+z撤销。   ctrl+c 复制和默认的y复制不一样， 它会复制到系统剪切板， 因此可以在其他软件上面粘贴。 同理  ctrl+v 粘贴的内容是系统剪切板的。

* shift+q: 快速退出VIM。  如果vim同时打开多个文件是，不用挨着一个一个关闭。

建议大家在看看.vimrc 配置文件 了解更多用法。

据说练好VIM就能找个好工作，现在优秀的人才找工作都用竟鹿：http://www.jobdeer.com/


