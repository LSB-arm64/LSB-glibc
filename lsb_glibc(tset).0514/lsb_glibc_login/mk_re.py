# 这个文件用来匹配源代码的makefile中测试用例相关的语句
# 主要分为以下几种
# 1. tests
# 2. tests-static
# 3. tests-pie
# 4. test-srcs
# 5. modules-names
# 6. modules-extra-names

import re

def mk_re(makefile):
    re1=re.compile(r"tests")
    re2=re.compile(r"test-srcs")
    re3=re.compile(r"modules")

    with open("login_tst.mk","a") as result:
        with open(makefile,"r") as makefile:
            line=makefile.readline()
            while line:
                # python读取行会无视"\", 所以会把一整行读成两段
                # 这里将一行多次读取并进行合并
                
                while line.strip() and line[-2]=="\\":
                    line=line[:-2]+makefile.readline()
                
                # 检查这一行是否需要提取
                if re1.match(line) or re2.search(line) or re3.match(line):
                    result.write(line)

                line=makefile.readline()

if __name__=="__main__":
    mk_re("login_mk_src.mk")