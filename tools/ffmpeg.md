### ffmpeg编译安装
1. gdb调试, ./configure --enable-debug=3 --disable-optimizations --disable-asm --disable-stripping
   --enable-debug  就是gcc 中添加-g选项， 3是-g的级别
   --disable-optimizations 不去优化
   --disable-stripping  是因为make install 会执行strip命令，strip命令就会去掉FFmpeg的symbols（符号表），避免strip命令将先前的配置给去掉
   --disable-asm 去掉汇编的东西
2. ffplay安装, 依赖于sdl库, 不同的ffmpeg版本依赖于不同的sdl版本库.
   sudo apt-get install libsdl2-dev
3. ffmpeg使用
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
