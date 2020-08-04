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

source "$TMW_DIR_Lib\\Public\\Util\\util.tcl"

##########

# To Parse All Folder or File.

proc parse_folder {{folder}} {
	set fd [glob -tails -directory $folder *]
	set lfd [llength $fd]
	variable filelist ""
	for {set i 0} {$i < $lfd} {incr i} {
		lappend filelist [lindex $fd $i]
	}
	return $filelist
}

proc parse_tcl {{folder}} {
	set fd [glob -tails -directory $folder *.tcl]
	set lfd [llength $fd]
	variable filelist ""
	for {set i 0 } {$i < $lfd} {incr i} {
		lappend filelist [lindex $fd $i]
	}
	return $filelist
}

##########

# For Autotest Startup.

proc auto_startup {{protocol} {dut_model} {testcase}} {
	if {[tmwlicense validate dnp]} {
		tmwlog insert "\n\[ OK \] DNP3 license valid."
		if {$protocol == "DNP3"} {
			tmwlog insert "\[ OK \] Testing fuction: $protocol."
			if {$dut_model == "None"} {
				tmwlog insert	"\[FAIL\] Please choose a DUT model!"
			} else {
				tmwlog insert "\[ OK \] Device under test: $dut_model."
				if {[llength $testcase] == 0} {
					tmwlog insert "\[FAIL\] Please choose test cases!"
				} else {
					tmwlog insert "\[ OK \] Test cases list:"
					for {set i 0} {$i < [llength $testcase]} {incr i} {
						set num [expr $i + 1]
						tmwlog insert "\[ OK \] $num. [lindex $testcase $i]"
					}
					tmwlog insert "\[ OK \] Start auto test."
					auto_srcinclude $protocol $dut_model
					auto_runtest $testcase
				}
			}
		} elseif {$protocol == ""} {
			tmwlog insert "\[FAIL\] Please choose a test function!"
		} else {
			tmwlog insert "\[FAIL\] Test function and license dismatch!"
		}
	} elseif {[tmwlicense validate mb]} {
		tmwlog insert "\n\[ OK \] Modbus license valid."
		if {$protocol == "Modbus"} {
			tmwlog insert "\[ OK \] Testing function: $protocol."
			if {$dut_model == "None"} {
				tmwlog insert	"\[FAIL\] Please choose a DUT model!"
			} else {
				tmwlog insert "\[ OK \] Device under test: $dut_model."
				if {[llength $testcase] == 0} {
					tmwlog insert "\[FAIL\] Please choose test cases!"
				} else {
					tmwlog insert "\[ OK \] Test cases list:"
					for {set i 0} {$i < [llength $testcase]} {incr i} {
						set num [expr $i + 1]
						tmwlog insert "\[ OK \] $num. [lindex $testcase $i]"
					}
					tmwlog insert "\[ OK \] Start auto test."
					auto_srcinclude $protocol $dut_model
					auto_runtest $testcase
				}
			}
		} elseif {$protocol == ""} {
			tmwlog insert "\[FAIL\] Please choose a test function!"
		} else {
			tmwlog insert "\[FAIL\] Test function and license dismatch!"
		}
	} else {
		tmwlog insert "\n\[FAIL\] License invalid!"
	}
}

proc auto_srcinclude {{protocol} {dut_model}} {
	global TMW_DIR_Case
	variable TMW_DIR_TestCase "$TMW_DIR_Case\\$dut_model\\$protocol"
	variable cfolderlist [parse_folder $TMW_DIR_TestCase]
	set cflistlength [llength $cfolderlist]
	for {set i 0} {$i < $cflistlength} {incr i} {
			set case [lindex $cfolderlist $i]
			source "$TMW_DIR_TestCase\\$case\\include.tcl"
	}
}

proc auto_runtest {{testcases}} {
	global TMW_DIR_Input
	for {set i 0} {$i < [llength $testcases]} {incr i} {
		set testcase [lindex $testcases $i]
		if {$testcase == "All"} {
			set fp [open "$TMW_DIR_Input\\$testcase.txt" r]
			set file_data [read $fp]
			close $fp
			set caselist ""
			set temp ""
			for {set c 0} {$c < [llength $file_data]} {incr c} {
				if {[regexp {Case} [lindex $file_data $c]]} {
					if {[lindex $file_data $c] != $temp } {
						set temp [lindex $file_data $c]
						lappend caselist [lindex $file_data $c]
					}
				}
			}
			for {set cl 0} {$cl < [llength $caselist]} {incr cl} {
				set case [lindex $caselist $cl]
				set all_paralist ""
				for {set d 0} {$d < [llength $file_data]} {incr d} {
					set data [lindex $file_data $d]
					if {$data == $case} {
						lappend all_paralist [lindex $file_data [expr $d + 2]]
					}
				}
				set testcmd "Run_Test_$case $all_paralist"
				tmwlog insert "\[ OK \] Execute test case: $testcase - $case"
				eval $testcmd
				# tmwlog insert $runtestcmd
			}
		} else {
			set fp [open "$TMW_DIR_Input\\$testcase.txt" r]
			set file_data [read $fp]
			close $fp
			set uni_paralist ""
			for {set p 1} {$p < [llength $file_data]} {incr p 2} {
				lappend uni_paralist [lindex $file_data $p]
			}
			set runtestcmd "Run_Test_$testcase $uni_paralist"
			tmwlog insert "\[ OK \] Execute test case: $testcase"
			eval $runtestcmd
			# tmwlog insert $runtestcmd
		}
	}
}

##########

# For Manual Startup.

proc manual_startup {} {
	if {[tmwlicense validate dnp]} {
		tmwlog insert "\n\[ OK \] DNP3 license valid!"
		manual_srcinclude "DNP3"
	} elseif {[tmwlicense validate mb]} {
		tmwlog insert "\n\[ OK \] Modbus license valid!"
		manual_srcinclude "Modbus"
	} else {
		tmwlog insert "\n\[FAIL\] License invalid!"
	}
}



proc manual_srcinclude {{protocol}} {
	tmwlog insert "\[ OK \] Manual test, source all model's $protocol test cases."
	global TMW_DIR_Case
	set modellist [parse_folder $TMW_DIR_Case]
	set mlistlength [llength $modellist]
	for {set m 0} {$m < $mlistlength} {incr m} {
		set model [lindex $modellist $m]
		set caselist [parse_folder $TMW_DIR_Case\\$model\\$protocol]
		set clistlength [llength $caselist]
		for {set c 0} {$c < $clistlength} {incr c} {
			set case [lindex $caselist $c]
			source "$TMW_DIR_Case\\$model\\$protocol\\$case\\include.tcl"
		}
	}
}

##########

# Developer Mode

proc develop_mode {{name}} {
	global TMW_DIR_Lib
	if {[file exists $TMW_DIR_Lib\\Temp\\$name]} {
		variable devfolder "$TMW_DIR_Lib\\Temp\\$name"
		variable devlist [parse_tcl $TMW_DIR_Lib\\Temp\\$name]
		set dlistlength [llength $devlist]
		for {set i 0} {$i < $dlistlength} {incr i} {
			set dcase [lindex $devlist $i]
			source "$TMW_DIR_Lib\\Temp\\$name\\$dcase"
		}
	} else {
		tmwlog insert "\[FAIL\] No such developer!"
	}
}

##########

# Initialize TMW.

if {[file exists $TMW_DIR_Input\\Run.txt]} {
	set fp [open "$TMW_DIR_Input\\Run.txt" r]
	set file_data [read $fp]
	set run_txt [lindex $file_data 0]
	set lrun_txt [llength $run_txt]
	set protocol [lindex $run_txt 0]
	set dut_model [lindex $run_txt 1]
	set testcase ""
	for {set i 2} {$i < $lrun_txt} {incr i} {
		lappend testcase [lindex $run_txt $i]
	}
	close $fp
	auto_startup $protocol $dut_model $testcase
} else {
	manual_startup
}
