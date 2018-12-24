### 网络配置
1. 开启网口 ifconfig eth0 192.168.110.23 up
2. 增加路由 route add default gw 192.168.110.1
3. nds服务器 vi /etc/resolv.conf 添加 nameserver 192.168.110.1

### nfs 挂载
1. 安装nfs-server: sudo apt-get install nfs-kernel-server
2. 配置nfs-server: vi /etc/exports 添加/opt/nfs *(rw,sync,no_root_squash,no_subtree_check)
3. 重启nfs-server: sudo /etc/init.d/nfs-kernel-server restart
4. 客服端 mount -t nfs -o rw,nolock,tcp 192.168.110.22:/opt/nfs/public-nfs /tmp

### tftp 服务
1. 安装tftp-server: sudo apt-get install tftpd-hpa #安装服务器
2. 配置TFTP服务器
	1. sudo vim /etc/default/tftpd-hpa
	2. TFTP_USERNAME="tftp"
	3. TFTP_ADDRESS="0.0.0.0:69"
	4. TFTP_DIRECTORY="/opt/tftpboot" #服务器目录,需要设置权限为777,chomd 777 /opt/tftpboot
	5. TFTP_OPTIONS="-l -c -s" # 这里是选项,-c是可以上传文件的参数，-s是指定tftpd-hpa服务目录，上面已经指定
3. 重新启动TFTP服务: sudo service tftpd-hpa restart
4. 关闭防火墙: sudo ufw disable
5. 安装tftp: sudo apt-get install tftp
6. 下载文件: tftp [ip]       >get [file]
7. 远程下载文件提示: transfer timeout
```
 关闭iptables（关闭命令要比启动复杂）
 iptables -F
 iptables -X
 iptables -Z
 iptables -P INPUT ACCEPT
 iptables -P OUTPUT ACCEPT
 iptables -P FORWARD ACCEPT
```

### 开发板移植tcdump
* 移植
	* 开源代码:
		* libpcap-1.7.3: git clone https://github.com/the-tcpdump-group/libpcap.git
		* tcpdump-4.7.4: git clone https://github.com/the-tcpdump-group/tcpdump.git
	* 编译配置脚本:
		* [libpcap-1.7.3-sh.configure](../scripts/libpcap-1.7.3-sh.configure)
		* [tcpdump-4.7.4-sh.configure](../scripts/tcpdump-4.7.4-sh.configure)
	* 配置时注意事项:
```
注意: tcpdump静态编译需要增加以下配置选项
export CFLAGS=-static
export CPPFLAGS=-static
export LDFLAGS=-static
```
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
* 使用
	* tcpdump抓取网络包: 
		* ifconfig 查看网络设备
		* tcpdump -i [net interface]
	* tcpdump抓取usb交互包:
		* linux内核配置: USB Support > USB Monitor
		* mount -t debugfs none_debugs /sys/kernel/debug 如果提示已经挂载，可以不运行这个命令
		* sudo modprobe usbmon
		* sudo ls -l /sys/kernel/debug/usb/usbmon
		* sudo cat /sys/kernel/debug/usb/devices
		* tcpdump -D 查看USB等设备
		* tcpdump -i [usb interface]

### Wirshark分析工具
* 安装
	* sudo apt-get install wireshark
	* sudo vim /etc/group
```
wireshark:x:130 > wireshark:x:130:linxsh
```
* 使用
	* 配置
		* 
		* 
		* 
	* 过滤条件
	* 统计

### 建立简单http服务器
1. 进入需要http的目录
2. 开启http服务器
```
python -m SimpleHTTPServer 8080
python ../tools/http.server
```
3. 开启https服务器
```
python ../tools/https.server
```
4. 客户段输入http://ip:8080/
