```
>>>>> sudo pip install pyaudio

The directory '/home/linxsh/.cache/pip/http' or its parent directory is not owned by the current user and the cache has
been disabled. Please check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's
-H flag.
The directory '/home/linxsh/.cache/pip' or its parent directory is not owned by the current user and caching wheels has
been disabled. check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H
flag.
Collecting pyaudio
Downloading
https://files.pythonhosted.org/packages/ab/42/b4f04721c5c5bfc196ce156b3c768998ef8c0ae3654ed29ea5020c749a6b/PyAudio-0.2.11.tar.gz
Installing collected packages: pyaudio
Running setup.py install for pyaudio ... error
Complete output from command /usr/bin/python -u -c "import setuptools,
tokenize;__file__='/tmp/pip-install-xP1OZt/pyaudio/setup.py';f=getattr(tokenize, 'open',
open)(__file__);code=f.read().replace('\r\n', '\n');f.close();exec(compile(code, __file__, 'exec'))" install
--record /tmp/pip-record-anNkBS/install-record.txt --single-version-externally-managed --compile:
running install
running build
running build_py
creating build
creating build/lib.linux-x86_64-2.7
copying src/pyaudio.py -> build/lib.linux-x86_64-2.7
running build_ext
building '_portaudio' extension
creating build/temp.linux-x86_64-2.7
creating build/temp.linux-x86_64-2.7/src
x86_64-linux-gnu-gcc -pthread -DNDEBUG -g -fwrapv -O2 -Wall
-Wstrict-prototypes -fno-strict-aliasing -Wdate-time
-D_FORTIFY_SOURCE=2 -g -fstack-protector-strong -Wformat
-Werror=format-security -fPIC -I/usr/include/python2.7 -c
src/_portaudiomodule.c -o
build/temp.linux-x86_64-2.7/src/_portaudiomodule.o
src/_portaudiomodule.c:29:23: fatal error: portaudio.h: 没有那个
文件或目录
compilation terminated.
error: command 'x86_64-linux-gnu-gcc' failed with exit
status 1

----------------------------------------
Command "/usr/bin/python -u -c "import
setuptools,
tokenize;__file__='/tmp/pip-install-xP1OZt/pyaudio/setup.py';f=getattr(tokenize,
'open',
open)(__file__);code=f.read().replace('\r\n',
'\n');f.close();exec(compile(code, __file__,
'exec'))" install --record
/tmp/pip-record-anNkBS/install-record.txt
--single-version-externally-managed --compile"
failed with error code 1 in
/tmp/pip-install-xP1OZt/pyaudio/
linxsh@linxsh:/media/linxsh/source/audio-stream>

>>>>> sudo apt-get install python-pyaudio    
```
