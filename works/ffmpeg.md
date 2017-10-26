### ffmpeg编译安装
1. gdb调试, ./configure --enable-debug=3 --disable-optimizations --disable-asm --disable-stripping
   --enable-debug  就是gcc 中添加-g选项， 3是-g的级别
   --disable-optimizations 不去优化
   --disable-stripping  是因为make install 会执行strip命令，strip命令就会去掉FFmpeg的symbols（符号表），避免strip命令将先前的配置给去掉
   --disable-asm 去掉汇编的东西
2. ffplay安装, 依赖于sdl库, 不同的ffmpeg版本依赖于不同的sdl版本库.
   sudo apt-get install libsdl2-dev
