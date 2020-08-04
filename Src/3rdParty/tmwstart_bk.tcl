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


variable TMW_DIR_Current [file dirname [info script]]
variable TMW_DIR_DPI [file normalize "$TMW_DIR_Current\\..\\..\\"]
variable TMW_DIR_Src "$TMW_DIR_DPI\\Src"
variable TMW_DIR_Input "$TMW_DIR_Src\\Input"
variable TMW_DIR_Output "$TMW_DIR_Src\\Output"
variable TMW_DIR_Lib "$TMW_DIR_Src\\Lib"
variable TMW_DIR_Case "$TMW_DIR_Src\\Case"

# source "$TMW_DIR_Lib\\Public\\Util\\util.tcl"

proc parse_file {{folder}} {
	set fd [glob -directory $folder *]
	set lfd [llength $fd]
	variable filelist ""
	for {set i 0} {$i < $lfd} {incr i} {
		lappend filelist [lindex $fd $i]
	}
	return $filelist
}

##########

# For Autotest Startup

proc autotest_startup {{protocol} {dut_model}} {
	if {[tmwlicense validate dnp]} {
		tmwlog insert "\n\[ OK \] DNP3 license valid."
	  if {$dut_model == ""} {
			tmwlog insert "\[FAIL\] Please choose a DUT model!"
		} else {
			if {$protocol == "DNP3"} {
				tmwlog insert "\[ OK \] Testing protocol: $protocol."
				tmwlog insert "\[ OK \] Device under test: $dut_model."
				tmwlog insert "\[ OK \] Start auto test."
				autotest_src_Include $protocol $dut_model
			} elseif {$protocol == ""} {
				tmwlog insert "\[FAIL\] Please choose a testcase!"
			} else {
				tmwlog insert "\[FAIL\] Testcase and license are dismatch!"
			}
		}
	} elseif {[tmwlicense validate mb]} {
		tmwlog insert "\n\[ OK \] Modbus license valid."
		if {$dut_model == ""} {
			tmwlog insert	"\[FAIL\] Please choose a DUT model!"
		} else {
			if {$protocol == "Modbus"} {
				tmwlog insert "\[ OK \] Testing protocol: $protocol."
				tmwlog insert "\[ OK \] Device under test: $dut_model."
				tmwlog insert "\[ OK \] Start auto test."
				autotest_src_Include $protocol $dut_model
			} elseif {$protocol == ""} {
				tmwlog insert "\[FAIL\] Please choose a testcase!"
			} else {
				tmwlog insert	"\[FAIL\] Testcase and license are dismatch!"
			}
		}
	} else {
		tmwlog insert "\n\[FAIL\] License invalid!"
	}
}

proc autotest_src_Include {{protocol} {dut_model}} {
	global TMW_DIR_Case
	variable TMW_DIR_TestCase "$TMW_DIR_Case\\$dut_model\\$protocol"
	variable caselist [parse_file $TMW_DIR_TestCase]
	set clistlength [llength $caselist]
	for {set i 0} {$i < $clistlength} {incr i} {
			set case [lindex [split [lindex $caselist $i] "/"] end]
			source "$TMW_DIR_TestCase\\$case\\include.tcl"
	}
}

##########

# For Manual Startup

proc manual_startup {} {
	if {[tmwlicense validate dnp]} {
		tmwlog insert "\n\[ OK \] DNP3 license valid!"
		manual_src_Include "DNP3"
	} elseif {[tmwlicense validate mb]} {
		tmwlog insert "\n\[ OK \] Modbus license valid!"
		manual_src_Include "Modbus"
	} else {
		tmwlog insert "\n\[FAIL\] License invalid!"
	}
}



proc manual_src_Include {{protocol}} {
	tmwlog insert "\[ OK \] Start manual test, source all!"
}


##########

# Run Test

if {[file exists $TMW_DIR_Input\\Run.txt]} {
	set fp [open "$TMW_DIR_Input\\Run.txt" r]
	set file_data [read $fp]
	set protocol [lindex [lindex $file_data 0] 0]
	set dut_model [lindex [lindex $file_data 0] 1]
	close $fp
	autotest_startup $protocol $dut_model
} else {
	manual_startup
	# src_Include "" ""
}




proc QQQQQ {{folder}} {
	global TMW_DIR_Current TMW_DIR_DPI TMW_DIR_Src TMW_DIR_Input TMW_DIR_Output TMW_DIR_Lib TMW_DIR_Case
	set input $folder
	if {$input == $TMW_DIR_Case || $TMW_DIR_Lib} {
		puts "QQ"
	} else {
		puts "QQQ"
	}
}



# set fd [glob -directory $folder *]
# set lfd [llength $fd]
# for {set i 0} {$i < $lfd} {incr i} {
# 	tmwlog insert [lindex $fd $i]
# }

proc QQ {} {
	global TMW_DIR_Lib
	# file exists $TMW_DIR_Case\\EDR-G9010
	set fd [glob -directory $TMW_DIR_Lib *]
	set lfd [llength $fd]
	for {set i 0} {$i < $lfd} {incr i} {
		tmwlog insert [lindex $fd $i]
		set fdl2 [glob -directory [lindex $fd $i] *]
		tmwlog insert $fdl2
	}
	# set eachfd [split $fd " "]
	# tmwlog insert [lindex $fd 0]
}
