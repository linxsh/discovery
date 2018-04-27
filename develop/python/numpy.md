# numpy学习笔记
* 函数库的导入
```
	import numpy  ##或者
	import numpy as np 
```
* 基本运算
```
	例如:
	1. 矩阵创建
	>>> test = np.arry([[1,2,3,4],[1,3,5,7]])
	>>> test = np.zeros((2,4))  ##创建2行4列的0矩阵
	>>> test = np.ones((2,4))   ##创建2行4列的1矩阵
	>>> test = np.arange(a,b,s) ##从a到b,每个s生成一个元素,可以通过reshape改变行和列
	>>> test = np.random.random((a,b)) ##创建a行b列元素值在0-1之间的矩阵
	>>> test = np.linspace(a,b,n)      ##从a到b取n个值
	2. 矩阵属性
	>>> test.sum()        ##矩阵求和
	>>> test.mean()       ##矩阵求平均值
	>>> test.min()        ##矩阵求最小值
	>>> test.max()        ##矩阵求最大值
	>>> test.sum(axis=0)  ##矩阵列求和
	>>> test.sum(axis=1)  ##矩阵行求和
	>>> test.ravel()      ##矩阵平坦化成一维向量
	>>> test.T            ##矩阵转置
	>>> test[test==n]=p   ##查找矩阵元素等于n并修改成p
	>>> test,dtype
	>>> test.astype(float) ##矩阵元素转成float型
	>>> test.ndim          ##查询矩阵维度
	>>> test.size          ##查询矩阵元素个数
	>>> test.shape         ##显示矩阵行列元素个数
	>>> test.shape = a, b  ##改变矩轴元素的个数,当a或b为-1时,自动计算
	>>> testx = test        ##共享数据存储区
	>>> testx = test.view() ##浅复制,不改变对方shape,改变对方的值
	>>> testx = test.cpoy() ##深复制,不共享数据存储区
	>>> testx = np.clip(test, min, max) ##限制test的上限值和下限值
	>>> testx = test[r0:r1, c0:c1] ##取矩阵的[r0,r1]行,[c0,c1]列
	3. 矩阵乘法
	>>> test*test         ##矩阵相应位置元素相乘
	>>> test.dot(test.T)  ##矩阵与转置矩阵相乘
	>>> test**n           ##矩阵相应位置元素的n次方
	4. 矩阵操作
	>>> np.floor(test)    ##矩阵元素向下取整
	>>> np.hstack((test, test)) ##矩阵按行拼接
	>>> np.vstack((test, test)) ##矩阵按列拼接
	>>> np.hsplit(test, a)      ##矩阵按行分割成a份
	>>> np.hsplit(test, (a,b))  ##矩阵按行分别在a,b处分割
	>>> np.vsplit(test, a)      ##矩阵按列分割成a份
	>>> np.vsplit(test, (a,b))  ##矩阵按列分别在a,b处分割
	5. 矩阵运算
	>>> np.exp(test)      ##矩阵元素求e的x次幂
	>>> np.sqrt(test)     ##矩阵元素求开根号
	>>> np.prod(test)     ##矩阵指定轴上元素的乘积
	>>> np.cumprod(test,axis) ##沿给定轴矩阵元素的累积乘积
	>>> np.diff(test, n, axis)   ##计算沿指定轴的第n个离散差分
	>>> np.gradient(test)        ##返回N维数组的梯度
	>>> np.cross(test,testx)     ##返回两个(数组）向量的叉积
	>>> np.trapz(test,testx)     ##使用复合梯形规则沿给定轴积分
	6. 矩阵和向量积
	>>> np.dot(a,b)       ##求解两个数组的点积。
	>>> np.vdot(a,b)      ##求解两个向量的点积。
	>>> np.inner(a,b)     ##求解两个数组的内积。
	>>> np.outer(a,b)     ##求解两个向量的外积。
	>>> np.matmul(a,b)    ##求解两个数组的矩阵乘积。
	>>> np.tensordot(a,b) ##求解张量点积。
	>>> np.kron(a,b)      ##计算 Kronecker 乘积。
	7. 线性运算
	>>> np.linalg.cholesky(a)：Cholesky 分解。
	>>> np.linalg.qr(a ,mode)：计算矩阵的 QR 因式分解。
	>>> np.linalg.svd(a ,full_matrices,compute_uv)：奇异值分解。
	>>> np.linalg.eig(a)：计算正方形数组的特征值和右特征向量。
	>>> np.linalg.eigh(a, UPLO)：返回 Hermitian 或对称矩阵的特征值和特征向量。
	>>> np.linalg.eigvals(a)：计算矩阵的特征值。
	>>> np.linalg.eigvalsh(a, UPLO)：计算 Hermitian 或真实对称矩阵的特征值。
	>>> np.linalg.norm(x ,ord,axis,keepdims)：计算矩阵或向量范数。
	>>> np.linalg.cond(x ,p)：计算矩阵的条件数。
	>>> np.linalg.det(a)：计算数组的行列式。
	>>> np.linalg.matrix_rank(M ,tol)：使用奇异值分解方法返回秩。
	>>> np.linalg.slogdet(a)：计算数组的行列式的符号和自然对数。
	>>> np.trace(a ,offset,axis1,axis2,dtype,out)：沿数组的对角线返回总和。
	>>> np.linalg.solve(a,b)：求解线性矩阵方程或线性标量方程组。
	>>> np.linalg.tensorsolve(a,b ,axes)：为 x 解出张量方程a x = b
	>>> np.linalg.lstsq(a,b ,rcond)：将最小二乘解返回到线性矩阵方程。
	>>> np.linalg.inv(a)：计算逆矩阵。
	>>> np.linalg.pinv(a ,rcond)：计算矩阵的（Moore-Penrose）伪逆。
	>>> np.linalg.tensorinv(a ,ind)：计算N维数组的逆。
```
