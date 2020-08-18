# package require csv
# package require struct::matrix
#
# set csv_file  "C:\\Users\\user\\PycharmProjects\\DnpTest\\Run.csv"
# ::struct::matrix data
# set chan [open $csv_file]
# csv::read2matrix $chan data  , auto
# close $chan
#
# set rows [data rows]
#
# for {set row 0} {$row < $rows} {incr row} {
#     puts [data get row $row]
# }
proc test {} {
  return 1
}
puts [test]
# package require csv
# package require struct::queue
#
# ::struct::queue data
# set chan [open $csv_file]
# csv::read2queue $chan data
# close $chan
#
# while {[data size] > 0} {
#     puts [data get]
#   }
# set EDR-810 [dict create a "CC" b "QQ"]
# puts [dict size EDR-810]

# package require tcom
# set excelFilePath "C:\\Users\\user\\PycharmProjects\\DnpTest\\Run.xlsx"
#
# set excelApp [::tcom::ref createobject Excel.Application]
# set workbooks [$excelApp Workbooks]
# set workbook [$workbooks Open [file nativename [file join [pwd] $excelFilePath] ] ]
# set worksheets [$workbook Worksheets]
# set worksheet [$worksheets Item [expr 1]]
# set cells [$worksheet Cells]
#
# set colCount [expr 2]
# set end 0
# # puts [binary format c* $a]
# while { $end == 0 } {
#     set rowCount 2
#     set colvalue [[$cells Item $rowCount $colCount] Value]
#     if {$colvalue == "V"} {
#         while {$colvalue != ""} {
#           incr rowCount
#           set colvalue [[$cells Item $rowCount $colCount] Value]
#           puts $colvalue
#         }
#     }
#     if {$colvalue == ""} {
#         set end 1
#     }
#     incr colCount
# }
#
# $excelApp Quit


# while { $end == 0 } {
#   set colCount [binary format c* $colInit]
#   puts $colCount
#   set columnValue [[$cells Item $rowCount $rowCount] Value]
#   if { $columnValue == ""} {
#    set end 1
#    incr colInit
#      continue
#   }
#   puts $columnValue
#   incr rowCount
#  }
