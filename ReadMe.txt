Modify the tmwstart.tcl path in tmwtest.tcl

# if {[file exists ./tmwstart.tcl]} {
#     eval "source ./tmwstart.tcl"
# }

if {[file exists ./DPITest/Src/3rdParty/tmwstart.tcl]} {
    eval "source ./DPITest/Src/3rdParty/tmwstart.tcl"
}

Install python
import module pandas, xlwt, xlrd, xlutils, openyxl

Using Run.xlsx to choose which function and case to test

Modify the tmw.exe path in Test.py 
C:\Program Files\Triangle MicroWorks\Protocol Test Harness\bin\tmw.exe

Using python to run the Test.py