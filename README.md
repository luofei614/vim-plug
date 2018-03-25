	
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

设置了很多方便的快捷键,一些自定义函数,PanGu_Full是中文排版加行首空格

默认leader键是空格

* git命令：gca 提交 gp推送 gl 拉取

* jk： 映射为ESC键

* ctrl+a ctrl+e：与emacs里表现一致

* cbg：内置了solarized主题，按cbg可以切换背景色

* leader+hjjk：窗口间移动

* leader+1 ：在编辑器左侧打开文件浏览器。[C进入文件夹 cd切换路径 t新标签打开 i新窗口打开]

* leader+2 ：开关quickfix窗口 

* leader+3 ：在编辑器右侧打开当前文件的函数列表

* leader+4 ：关闭quickfix窗口 

* leader+5 ：快速编辑vimrc

* leader+6 ：快速加载vimrc

* leader+7 ：预览markdown

* leader+': 将单词用'包裹

* leader+": 将单词用"包裹

* leader+c: 可视模式下复制

* leader+v: 粘贴

* leader+t: 测试

* leader+r: 运行

* leader+b: build

* leader+q: 快速退出VIM单个窗口

* leader+f : 按文件名快速查找当前目录中的文件

* leader+g : 按文件内容快速查找当前目录中的文件[需要安装ag]

* shift+q: 快速退出VIM。  如果vim同时打开多个文件是，不用挨着一个一个关闭。

* ctrl+] ： 跳到函数声明出（自己定义的函数，非系统函数），会在当前界面打开函数声明文件，如果想新建个tab页再跳到函数声明处，可以用 `ctrl+\`






