### tensorflow
1. pip安装: sudo apt-get install python-pip python-dev
2. tensorflow安装:
	1. cpu版本: sudo pip install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.8.0-cp27-none-linux_x86_64.whl
	2. gpu版本: sudo pip install --upgrade https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow-1.8.0-cp27-none-linux_x86_64.whl
	注意: GPU需要安装相应的GPU库（cuda）
3. 升级:
	1. pip升级: sudo pip install --upgrade pip
	2. tensorflow升级:  sudo pip install --upgrade tensorflow
	3. tensorboard升级: sudo pip install --upgrade tensorboard

### 依赖安装库:
1. 音频采集和播放 [pyaudio文档](http://people.csail.mit.edu/hubert/pyaudio/docs/#example-blocking-mode-audio-i-o): sudo apt-get install python-pyaudio
2. 音频分析库 [librosa文档](https://librosa.github.io/librosa/install.html): sudo pip install librosa
3. 矩阵处理库 [numpy文档](./numpy.md): sudo pip install numpy

### 解决错误过程:
#### error.1
```
TypeError: expected string or buffer

>>>> sudo pip uninstall joblib
>>>> sudo pip install joblib==0.11
```
#### error.2
```
import tensorflow as tf

提示错误：
/usr/local/lib/python2.7/dist-packages/scipy/sparse/lil.py:19: RuntimeWarning: numpy.dtype size changed, may indicate
binary incompatibility. Expected 96, got 88 from . import _csparsetools

>>>> sudo pip install --upgrade numpy==1.14.5
```
