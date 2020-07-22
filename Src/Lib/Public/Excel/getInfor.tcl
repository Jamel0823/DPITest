proc getInfor_Run {} {
  variable TMW_DIR_Current [file dirname [info script]]
  variable TMW_DIR_DnpTest "$TMW_DIR_Current\\..\\..\\..\\.."
  package require tcom
  set excelFilePath "$TMW_DIR_DnpTest\\Run.xlsx"
  #
  set excelApp [::tcom::ref createobject Excel.Application]
  set workbooks [$excelApp Workbooks]
  set workbook [$workbooks Open [file nativename [file join [pwd] $excelFilePath] ] ]
  set worksheets [$workbook Worksheets]
  set worksheet [$worksheets Item "TestFunction"]
  set cells [$worksheet Cells]

  set colCount [expr 2]
  set end 0
  list runlist

  while { $end == 0 } {
      set caselist {}
      set rowCount 2
      set colvalue [[$cells Item $rowCount $colCount] Value]
      if {$colvalue == ""} {
          set end 1
      }
      if {$colvalue == "V"} {
          lappend caselist [[$cells Item 1 $colCount] Value]
          set flag 0
          while { $flag == 0 } {
            incr rowCount
            set colvalue [[$cells Item $rowCount $colCount] Value]
            if { $colvalue == ""} {
              set flag 1} else {
              lappend caselist $colvalue
            }
          }
          lappend runlist $caselist
      }
      incr colCount
  }

  puts $runlist
  $excelApp Quit
}
proc getInfor_All {{$CaseName}} {
  set filename "$TMW_DIR_Current\\..\\..\\..\\Input\\Run.txt"
  set fileID [open $filename "w"]

  puts -nonewline $fileID $runlist
  close $fileID

  puts $runlist
  puts [llength [lindex $runlist 1]]
  for {set i 0} {$i < [llength $runlist]} {incr i} {
    for {set j 1} {$j < [llength [lindex $runlist $i]]} {incr j} {
      if {[lindex [lindex $runlist $i] $j] == "All"} {
        set dict "./Src/Input"
        set file_list [glob -directory $TMW_DIR_Current\\..\\..\\..\\Case\\$CaseName -tails *]
        set len [llength $file_list]
        puts $file_list
      }
    }
  }
  # set dict "./Src/Input"
  # set file_list [glob -directory $TMW_DIR_Current\\..\\..\\..\\Case\\DNP3 -tails *]
  # set len [llength $file_list]
  # puts $file_list
  # set filename [file join $dict "DNP3_ALL.txt"]
  # set content [open $filename w+]

#   for {set i 1} {$i <= $len} {incr i} {
#  puts $content [lindex $file_list [expr $i-1]]
# }
#   close $content

}

getInfor_Run
