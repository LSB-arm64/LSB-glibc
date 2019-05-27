# LSB-glibc
Port the test cases in the glibc source to the LSB-core

目录文件结构如下:

src/ 用来保存源码, 以及生成的动态链接库, 测试用例 
tst/ 用来保存生成的测试转接口 
makefile 这个是从源码生成动态链接库以及测试用例所需的makefile, 需要在之后复制到src目录下 
mk_mf.py 用来生成生成测试转接口的makefile的脚本, 由src目录下的makefile调用, 不要自己运行 
mk_tst.py 用来从源makefile中提取相关语句, 具体内容看注释 
mk_re.py 用来匹配源代码的makefile中测试用例相关的语句 
mv_so_src.py 用来移动动态链接库的源码 
mv_tst_src.py 用来移动测试用例的源码 
readme.md 本文件 
test-skeleton.c 测试用例框架, 不要改动 
lsb_test-skeleton.c 测试用例框架, 不要改动

移植过程可以通过shell脚本自动化实现： 
1.运行creat_and_modify1.sh 
2.复制glibc源码中测试用例到生成的src/目录下 
3.运行creat_and_modify2.sh 
4.如果上述过程未报错，运行make_and_excute.sh
