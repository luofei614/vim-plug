	
(一些插件如node和vim-go依赖相应的node和go环境支持)

运行2个命令配置一个强大的VIM编辑器。  

     # git clone https://github.com/sherylynn/vim-plug.git
     # cd vim-plug && sh install.sh

windows下把install.sh改为 install.bat即可

 就能安装上所有插件

 使用了原主人的配置2年了...终于今天自己定制化了一下
 删除了一些配置,增加了eshint等等,更适合react jsx开发

安装好后效果如下：
![enter image description here](https://github.com/sherylynn/vim-plug/raw/master/screenshot.png)

支持自动更新，默认开启

设置了很多方便的快捷键

默认leader键是空格

* git命令：gca 提交 gp推送 gpl 拉取

* jk： 映射为ESC键

* ctrl+a ctrl+e：与emacs里表现一致

* cbg：内置了solarized主题，按cbg可以切换背景色

* leader+hjjk：窗口间移动

* leader+3 ：  在编辑器左侧打开文件浏览器， 再按一次F11则会关闭文件浏览器。

* leader+4 ：关闭quickfix窗口 

* leader+5 ：快速编辑vimrc

* leader+q: 快速退出VIM单个窗口

* leader+f : 按文件名快速查找当前目录中的文件

* leader+g : 按文件内容快速查找当前目录中的文件[需要安装ag]

* shift+q: 快速退出VIM。  如果vim同时打开多个文件是，不用挨着一个一个关闭。

* F5  ： 刷新vim更改

* F12：   在编辑器右侧打开当前文件的函数列表， 再安一次F12关闭函数列表。函数列表是基于ctags的先需要在项目目录下运行 `ctags -R`  在VIM中按快捷键 F3 可以自动执行ctags命令。

* ctrl+] ： 跳到函数声明出（自己定义的函数，非系统函数），会在当前界面打开函数声明文件，如果想新建个tab页再跳到函数声明处，可以用 `ctrl+\`





