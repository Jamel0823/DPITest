#
# This file and its content is copyright of Moxa Inc. - © Moxa 2020.
# All rights reserved.
# Any redistribution or reproduction of part or all of the contents in any form is prohibited.
# You may not, except with our express written permission, distribute or exploit the content.
#

proc MX_TMW_LOG {{log ""} {id ""}} {
	set output "\[[tmwlog getCurrentTime bdata varName]\]\[MOXA\]$log"
	tmwlog insert $output

	if {$id != ""} {
		MX_TMW_LOG_FILE $output $id
	}
}

proc MX_TMW_LOG_FILE {{log ""} {id ""}} {
	global TMW_DIR_Output
	set filename "$TMW_DIR_Output\\$id.log"
	set fileId [open $filename "a+"]
	puts $fileId $log
	flush $fileId
	close $fileId
}

# proc createLogFile {{path}} {
#   set fileID [open $path "w"]
#   close $fileID
# }
#
# proc appendLogInfo {{path} {result}} {
#   set fileID [open $path "a"]
#   puts -nonewline $fileID $result
#   close $fileID
# }
