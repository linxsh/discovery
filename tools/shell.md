### 更改目录所属用户组
```
chown -R linxsh /opt
```
### zsh安装以及配置
```
apt-get install zsh
chsh -s /bin/zsh  ##重启生效
cp ../zsh-shell/.zshrc ~/

脚本执行命令not found:
例如source, 需要执行,zsh scripts.sh
```
### vim安装以及配置
```
apt-get install vim
git clone https://github.com/linxsh/vim-config.git
cp vim-config/.vimrc ~/
cp vim-config/.vim ~/ -rf

插件安装:
/home/linxsh: vim
:PluginInstall

vim文档使用说明: http://blog.csdn.net/namecyf/article/details/7787479
```

### ubuntu 64bit 安装32bit交叉编译工具链需要安装以下库
```
apt-get install lib32z1 lib32ncurses5
apt-get install lib32stdc++6
```
