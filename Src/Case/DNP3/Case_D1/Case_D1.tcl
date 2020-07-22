
variable TMW_DIR_Current [file dirname [info script]]
variable TMW_DIR_Input "$TMW_DIR_Current\\..\\..\\..\\Input"
puts $TMW_DIR_Input

set fp [open "$TMW_DIR_Input\\Case_D1.txt" r]
set file_data [read $fp]
# puts [lindex $file_data 2]
close $fp
#
for {set i 0} {$i < [llength $file_data]} {incr i} {
	lappend paralist [lindex $file_data $i]
}
puts [lindex $paralist 1]

proc Run_Test_Case_1 {} {
    opendnpmaster "192.168.127.49"
    opendnpslave
}
