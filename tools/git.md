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
4. git format-patch 使用生成补丁文件
```
git format-patch -M master //生成 master分支 到 当前commit-id 的提交补丁文件
git format-patch commit-id //生成 commit-id  到 当前commit-id 的提交补丁文件
git format-patch commit-id0 commit-id1  //生成 commit-id0 到 commit-id1 的提交补丁文件
git format-patch -n commit-id //生成 commit-id 以后的n次提交补丁文件(包含commit-id), 单次补丁n=1

应用patch以及应用过程解决patch, 步骤如下:
git apply --stat  commit-id.patch //检查生成的patch
git apply --check commit-id.patch //检查patch能否应用成功
commit-id.patch出现冲突时:
1. git applay commit-id.patch --reject
2. 解决冲突
3. git am --resolved
commit-id.patch正常:
git am commit-id.patch
需要去掉之前所有的patch
git am --abort
```
