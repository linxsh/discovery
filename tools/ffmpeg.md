### ffmpeg编译安装
1. gdb调试, ./configure --enable-debug=3 --disable-optimizations --disable-asm --disable-stripping --disable-shared --enable-static
	--enable-debug  就是gcc 中添加-g选项， 3是-g的级别
	--disable-optimizations 不去优化
	--disable-stripping  是因为make install 会执行strip命令，strip命令就会去掉FFmpeg的symbols（符号表），避免strip命令将先前的配置给去掉
	--disable-asm 去掉汇编的东西
	gdb ./ffplay_g
2. ffplay安装, 依赖于sdl库, 不同的ffmpeg版本依赖于不同的sdl版本库.
	sudo apt-get install libsdl2-dev
3. [ffmpeg文档](http://ffmpeg.org/documentation.html)
	* 多个mp4流合并成ts流,转换容器格式,不转换音视频编码: ffmpeg -i 1.mp4 -i 2.mp4 -vcodec copy -acodec copy 1.ts
	* 从码流过滤出es流: ffmpeg -i 1.mp4 -vcodec copy -f rawvideo 1.h264
	* 主要参数：
		1\. -i 设定输入流
		2\. -f 设定输出格式
		3\. -ss 开始时间
		4\. -t 持续时间
	* 视频参数：
		1\. -b 设定视频流量，默认为200Kbit/s
		2\. -r 设定帧速率，默认为25
		3\. -s 设定画面的宽与高
		4\. -aspect 设定画面的比例
		5\. -vn 不处理视频
		6\. -vcodec 设定视频编解码器，未设定时则使用与输入流相同的编解码器
	* 音频参数：
		1\. -ar 设定采样率
		2\. -ac 设定声音的Channel数
		3\. -acodec 设定声音编解码器，未设定时则使用与输入流相同的编解码器
		4\. -an 不处理音频
```
ffmpeg -ss 0:1:30 -t 0:0:20 -i input.avi -vcodec copy -acodec copy output.avi    //剪切视频
ffmpeg -i input.mp4 -vcodec h264 -bf 0 -g 25 -s 352*278 -an -f m4v output.h264
//-g 关键帧间隔控制 -bf B帧数目控制
```
```
显示视频帧信息:
ffmpeg -y -i ~/视频/a08u_2.ts -vf showinfo -frames:v 100 -f rawvideo /dev/null

    Stream #0:0[0x100]: Video: h264 (High) ([27][0][0][0] / 0x001B), yuv420p, 1920x1080 [SAR 1:1 DAR 16:9], 25 fps, 25
tbr, 90k tbn, 50 tbc
    Stream #0:1[0x101](eng): Audio: aac (LC) ([15][0][0][0] / 0x000F), 48000 Hz, stereo, fltp, 154 kb/s
    Stream #0:2[0x102](rus): Audio: aac (LC) ([15][0][0][0] / 0x000F), 48000 Hz, stereo, fltp, 154 kb/s
[Parsed_showinfo_0 @ 0x9968da0] n:   0 pts: 154800 pts_time:1.72    pos:   798248 fmt:yuv420p sar:1/1 s:1920x1080 i:P
iskey:1 type:I checksum:277B408A plane_checksum:[7AA6765A C83C9664 986733BD] mean:[61 122 137] stdev:[48.6 8.5 8.5]
[Parsed_showinfo_0 @ 0x9968da0] n:   1 pts: 158400 pts_time:1.76    pos:   845436 fmt:yuv420p sar:1/1 s:1920x1080 i:P
iskey:0 type:P checksum:97A19105 plane_checksum:[3E22A0A7 6E557A4F 5E557600] mean:[62 121 137] stdev:[48.9 8.9 9.0]
[Parsed_showinfo_0 @ 0x9968da0] n:   2 pts: 162000 pts_time:1.8     pos:   868936 fmt:yuv420p sar:1/1 s:1920x1080 i:P
iskey:0 type:P checksum:94649101 plane_checksum:[0210BB12 06D9A1F8 864933E8] mean:[65 120 138] stdev:[49.2 10.2 10.1]
```
4. ffplay使用
```
fflay -f rawvideo -video_size 1920*1080 input.file  //播放视频帧yuv
```
