## linux alsa 开发总结:

### alsa 框架上实现alsa driver
### alsa-lib 编译以及开发板安装
### alsa-utils 编译以及开发板安装
### alsa 工具使用总结
* aplay -l 查看当前有那些播放设备
* aplay -D hw :0,0,x file 使用x设备播放file文件
* amxier -c x (scontents) 查看control mixer设备信息
* amixer scontrols  查看有那些control mixer控制设备
* amxier controls 查看control mixer & card 所有控制设备
* 调节音量 amixer cset numid=x :values
* 调节静音 amixer cset numid=x boolen

## pulseaudio 开发总结:

### pulseaudio 编译以及开发板安装
### pulseaudio 工具使用总结
