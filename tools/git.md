1. sudo apt-get install git
2. 修改.gitconfig配置文件
```
  git config --global core.fileMode false git不关心文件模式的改变
  git config --global core.excludesfile ~/.gitignore 设置全局git忽略文件
  git config --global user.email linxsh@nationalchip.com
  git config --global user.name linxsh
```
3. vim ~/.gitconfig
```
[color]
    ui = auto
    diff=true
[alias]
    ci = commit
    st = status
    co = checkout
    b  = branch
    br = branch
    patch = format-patch
[diff]
    renames = copy
[rerere]
    enabled = true
[user]
    email =linxsh@nationalchip.com
    name = linxsh
```
