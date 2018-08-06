#### 更改目录所属用户组
```
chown -R linxsh /opt
```

#### linux 删除文件^M方法
* 方法1
```
打开文件 vim filename
命令模式下输入 :set fileformat=unix
保存退出 :w 
```
* 方法2
```
$ dos2unix filename
```

#### ubuntu 64bit 安装32bit交叉编译工具链
```
apt-get install lib32z1 lib32ncurses5
apt-get install lib32stdc++6
sudo apt-get install libtcl8.5:i386
```

