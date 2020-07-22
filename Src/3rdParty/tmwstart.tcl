#
# This file and its content is copyright of Moxa Inc. - © Moxa 2020.
# All rights reserved.
# Any redistribution or reproduction of part or all of the contents in any form is prohibited.
# You may not, except with our express written permission, distribute or exploit the content.
#

#
# file: tmwstart.tcl
# purpose: This is the default startup script for the Triangle MicroWorks, Inc.
#  Protocol Test Harness. This script defines procedures that can be executed
#  from the test harness command line. Add additional procedures or scripts here
#  as desired for the target environment.
#

# set cmd [open |cmd.exe "r+"]
# puts $cmd "D:"
# puts $cmd "cd \\Desktop\\DNP3\\Test\\Lib\\Public\\Excel"
# puts $cmd "tclsh .\\getInfor.tcl"

variable TMW_DIR_Current [file dirname [info script]]
variable TMW_DIR_DPI "$TMW_DIR_Current\\..\\..\\"
variable TMW_DIR_Src "$TMW_DIR_DPI\\Src"
variable TMW_DIR_Input "$TMW_DIR_Src\\Input"
variable TMW_DIR_FullTest "$TMW_DIR_Src\\FullTest"
variable TMW_DIR_FullTest_DNP3 "$TMW_DIR_FullTest\\DNP3"
variable TMW_DIR_FullTest_Modbus "$TMW_DIR_FullTest\\Modbus"




if {[tmwlicense validate dnp]} {
	# dnp
	# source "C:\\Users\\user\\PycharmProjects\\DnpTest\\Src\\Suite\\DNP3\\include.tcl"
	# source "C:\\Users\\user\\PycharmProjects\\DnpTest\\Src\\Suite\\Modbus\\include.tcl"
	source "$TMW_DIR_FullTest_DNP3\\include.tcl"
	source "$TMW_DIR_FullTest_Modbus\\include.tcl"
	# source "$TMW_DIR_Suite_DNP3\\include.tcl"


} elseif {[tmwlicense validate modbus]} {
	# modbus
	# source "C:\\Users\\user\\PycharmProjects\\DnpTest\\Src\\Suite\\Modbus\\include.tcl"
	source "$TMW_DIR_FullTest_Modbus\\include.tcl"
} else {
	tmwlog insert "\nLicensed dismatch"
}

set fp [open "$TMW_DIR_Input\\Run.txt" r]
set file_data [read $fp]
# puts $file_data
close $fp
for {set i 0} {$i < [llength $file_data]} {incr i} {
	lappend runlist [lindex $file_data $i]
}

proc getCommandforRunTest {{TMW_DIR_Input} {case}} {
	set fp [open "$TMW_DIR_Input\\$case.txt" r]
	set file_data [read $fp]
	set command Run_Test_$case
	close $fp

	for {set i 1} {$i < [llength $file_data]} {incr i 2} {
		lappend paralist [lindex $file_data $i]
			lappend command [lindex $file_data $i]
	}
		return $command
}

#
for {set i 0} {$i < [llength $runlist]} {incr i} {
  for {set j 1} {$j < [llength [lindex $runlist $i]]} {incr j} {
    if {[lindex [lindex $runlist $i] $j] == "All"} {
      eval Run_FullTest_[lindex [lindex $runlist $i] 0]
      # puts Run_FullTest_[lindex [lindex $runlist $i] 0]
    } else {
      eval [getCommandforRunTest $TMW_DIR_Input [lindex [lindex $runlist $i] $j]]
      # puts [getCommandforRunTest $TMW_DIR_Input [lindex [lindex $runlist $i] $j]]
    }
  }
}
