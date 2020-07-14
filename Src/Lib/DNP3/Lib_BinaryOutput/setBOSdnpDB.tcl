
proc addbinout {{quantity 1}} {
  for {set i 0} {$i < $quantity} {incr i} {
    sdnpbinout add
  }
}

proc bout {{start 0} {end 0}} {
  global ssesn

  if {$start > $end} {
    set end $start
  }

  for {set i $start} {$i <= $end} {incr i} {
    set oldvalue [sdnpbinin get point $i value]
    sdnpbinout set session $ssesn point $i value [expr !$oldvalue]
  }
}
