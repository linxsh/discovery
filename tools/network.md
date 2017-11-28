### 网络配置
1. 开启网口 ifconfig eth0 192.168.110.23 up
2. 增加路由 route add default gw 192.168.110.1
3. nds服务器 vi /etc/resolv.conf 添加 nameserver 192.168.110.1

### nfs 挂载
1. 安装nfs-server: sudo apt-get install nfs-kernel-server
2. 配置nfs-server: vi /etc/exports 添加/opt/nfs *(rw,sync,no_root_squash,no_subtree_check)
3. 重启nfs-server: sudo /etc/init.d/nfs-kernel-server restart
4. 客服端 mount -t nfs -o rw,nolock,tcp 192.168.110.22:/opt/nfs/public-nfs /tmp

### 开发板移植tcdump
1. 开源代码:
	* libpcap-1.7.3: git clone https://github.com/the-tcpdump-group/libpcap.git
	* tcpdump-4.7.4: git clone https://github.com/the-tcpdump-group/tcpdump.git
2. 编译配置脚本:
	* [libpcap-1.7.3-sh.configure](../scripts/libpcap-1.7.3-sh.configure)
	* [tcpdump-4.7.4-sh.configure](../scripts/tcpdump-4.7.4-sh.configure)
3. 配置时注意事项:
```
报错: configure: error: pcap type not determined when cross-compiling; use--with-pcap=… follow 解决**方法:
解决: 将 configure 文件中的如下内容注释掉
# if test -z "$with_pcap" && test "$cross_compiling" = yes; then
#     as_fn_error $? "pcap type not determined when cross-compiling; use --with-pcap=..." "$LINENO" 5
# fi
```
```
报错：
configure: error: Your operating system’s lex is insufficient to compile
libpcap. flex is a lex replacement that has many advantages, including
being able to compile libpcap. For more information, see
http://www.gnu.org/software/flex/flex.html .
解决:
sudo apt-get install flex
```
```
报错：
make: yacc: Command not found
解决:
sudo apt-get install byacc
```
4. tcpdump静态编译
	* export CFLAGS=-static
	* export CPPFLAGS=-static
	* export LDFLAGS=-static
