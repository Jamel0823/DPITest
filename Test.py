import sys
import os

str = os.path.abspath(__file__)
str = str[0:-8]
os.chdir(str + "\Src\Lib\Public\Excel")
os.system("tclsh .\getInfor.tcl")
os.system(r'"C:\Program Files\Triangle MicroWorks\Protocol Test Harness\bin\tmwtest.exe"')




