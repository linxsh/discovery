#### openwrt 编译过程
* 编译工具依赖库:
```
	sudo apt-get install build-essential subversion libncurses5-dev zlib1g-dev gawk flex git-core gettext libssl-dev unzip util-linux device-tree-compiler dosfstools
```
* 选择默认配置:
```
	cp configs/<板级>_defconfig .config
```
* 生成默认配置:
```
	./scripts/diffconfig.sh > configs/<板级>_defconfig
```
* 应用配置:
```
	make defconfig
```
* 编译:
```
	make menuconfig（kernel/app选择开启关闭等）
	make
```
* 单个包编译:
```
	make package/<name>/{clean,compile,install}
```
* 清除:
	* 清理/bin和/build_dir目录,但不清理交叉编译工具链
```
		make clean
```
	* 清理/bin, /build_dir, /staging_dir , /toolchain 和 /logs目录,但不清理.config文件
```
		make dirclean
```
	* 完全清理
```
		make distclean
```

#### openwrt开发模块



