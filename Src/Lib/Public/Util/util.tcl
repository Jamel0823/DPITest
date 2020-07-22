#
# This file and its content is copyright of Moxa Inc. - © Moxa 2020.
# All rights reserved.
# Any redistribution or reproduction of part or all of the contents in any form is prohibited.
# You may not, except with our express written permission, distribute or exploit the content.
#

proc filter {{level 2}} {
	# Enable/Disable layers based on level parameter
	tmwlog filter user [expr $level > 0]
	tmwlog filter application [expr $level > 1]
	tmwlog filter transport [expr $level > 2]
	tmwlog filter link [expr $level > 3]
	tmwlog filter physical [expr $level > 4]
	return
}

proc dir {{path *}} {
	foreach file [glob $path] {
		set type [file type $file]
		set size [file size $file]
		puts [format "%-40s %-10s %8d" $file $type $size]
	}
}

proc cl {} {
	tmwlog clear
}

# rename puts _puts
proc puts { {x} {y ""} {z ""}} {
	if {$z != ""} {
		_puts $x $y $z
	} elseif {$y != ""} {
		if {$x != "-nonewline"} {
			_puts $x $y
		} else {
			tmwputs $x $y
		}
	} else {
		tmwputs $x
	}
}

proc removeFromTclList { listName elementName } {
	upvar $listName list
	set index [lsearch $list $elementName]
	if {$index >= 0} {
		set $listName [lreplace $list $index $index]
	}
}

proc showarray {inputarray} {
	upvar $inputarray inarray
	puts "\nContents of Array $inputarray"
	foreach index [lsort -dictionary [array names inarray]] {
		puts "$inputarray\($index\) = $inarray($index)"
	}
}

proc tmwseconds {value} {
	return [expr $value * 1000]
}

proc tmwminutes {value} {
	return [expr $value * 60 * 1000]
}

proc tmwhours {value} {
	return [expr $value * 60 * 60 * 1000]
}

proc tmwdays {value} {
	return [expr $value * 24 * 60 * 60 * 1000]
}

proc repeat {cmd period} {
	global repeattable

	eval $cmd

	set i 0
	while {[info exists repeattable(repeat#$i,cmd)]} {
		incr i
	}

	set id repeat#$i
	set repeattable($id,cmd) $cmd
	set repeattable($id,period) $period
	set repeattable($id,afterid) [after $period "lowrepeat $id"]

	return $id
}

proc showrepeat {} {
	global repeattable
	showarray repeattable
}

proc cancelrepeat {id} {
	global repeattable
	after cancel $repeattable($id,afterid)
	unset repeattable($id,afterid)
	unset repeattable($id,cmd)
	unset repeattable($id,period)
}

proc lowrepeat {id} {
	global repeattable
	eval $repeattable($id,cmd)
	set $repeattable($id,afterid) [after $repeattable($id,period) "lowrepeat $id"]
}

proc setCheckboxesOn {} {
	tmwlog filter link 1
	tmwlog filter physical 1
	tmwlog filter application 1
	tmwlog filter user 1
	tmwlog filter transport 1
	tmwlog filter mmi 1
}

proc setCheckboxesOff {} {
	tmwlog filter link 0
	tmwlog filter physical 0
	tmwlog filter application 0
	tmwlog filter user 0
	tmwlog filter transport 0
	tmwlog filter mmi 0
}
