proc Run_getInfor {} {
  variable TMW_DIR_Current [file dirname [info script]]
  variable TMW_DIR_DnpTest "$TMW_DIR_Current\\..\\..\\..\\.."
  package require tcom
  set excelFilePath "$TMW_DIR_DnpTest\\Run.xlsx"
  #
  set excelApp [::tcom::ref createobject Excel.Application]
  set workbooks [$excelApp Workbooks]
  set workbook [$workbooks Open [file nativename [file join [pwd] $excelFilePath] ] ]
  set worksheets [$workbook Worksheets]
  set worksheet [$worksheets Item [expr 1]]
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
  $excelApp Quit

  set filename "$TMW_DIR_Current\\..\\..\\..\\Input\\Run.txt"
  set fileID [open $filename "w"]

  puts -nonewline $fileID $runlist
  close $fileID
}

Run_getInfor
