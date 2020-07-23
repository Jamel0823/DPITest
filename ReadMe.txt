Modify the tmwstart.tcl path in tmwtest.tcl

# if {[file exists ./tmwstart.tcl]} {
#     eval "source ./tmwstart.tcl"
# }

if {[file exists ./DPITest/Src/3rdParty/tmwstart.tcl]} {
    eval "source ./DPITest/Src/3rdParty/tmwstart.tcl"
}

Install python
import module pandas, xlwt, xlrd, xlutils, openyxl

Using Run.xlsx to choose which function adn case to test

Using python to run the Test.py