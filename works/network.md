### 网络配置
1. 开启网口 ifconfig eth0 192.168.110.23 up
2. 增加路由 route add default gw 192.168.110.1
3. nds服务器 vi /etc/resolv.conf 添加 nameserver 192.168.110.1

### nfs 挂载
1. 安装nfs-server: sudo apt-get install nfs-kernel-server
2. 配置nfs-server: vi /etc/exports 添加/opt/nfs *(rw,sync,no_root_squash,no_subtree_check)
3. 重启nfs-server: sudo /etc/init.d/nfs-kernel-server restart
4. 客服端 mount -t nfs -o rw,nolock,tcp 192.168.110.22:/opt/nfs/public-nfs /tmp

