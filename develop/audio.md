## linux alsa 开发总结:

### alsa 开发总结:
1. 框架上实现alsa driver
2. alsa-lib 编译以及开发板安装
3. alsa-utils 编译以及开发板安装
4. alsa 工具使用总结
	1. aplay使用
		1. aplay -l 查看当前有那些播放设备
		2. aplay -D hw :0,0,x file 使用x设备播放file文件
	2. amxier使用
		1. amxier -c x (scontents) 查看control mixer设备信息
		2. amixer scontrols  查看有那些control mixer控制设备
		3. amxier controls 查看control mixer & card 所有控制设备
		4. 调节音量 amixer cset numid=x :values
		5. 调节静音 amixer cset numid=x boolen

### pulseaudio 开发总结:
1. pulseaudio 编译以及开发板安装
2. pulseaudio 工具使用总结

### 常用的音频分析工具
1. audacity 是linux下发展起来的，一款遵循GNU协议的免费音频处理软件。
	1. 安装：sudo apt install audacity

