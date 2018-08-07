#### error.1
```
main.c:36:31: fatal error: readline/readline.h: 没有那个文件或目录

>>>> sudo apt-get install libreadline-dev
```

#### error.2
```
/usr/bin/ld: 找不到 -llzma
>>>> sudo apt-get install liblzma-dev
```

#### error.3
```
/usr/bin/ld: 找不到 -lcrypto
>>>> sudo apt-get install openssl
>>>> sudo ln -s /usr/lib/libcrypto++.so /usr/lib/libcrypto.so
```
