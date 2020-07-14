
proc addbinin {{quantity 1}} {
  for {set i 0} {$i < $quantity} {incr i} {
    sdnpbinin add
  }
}

proc bin {{start 0} {end 0}} {
  global ssesn

  if {$start > $end} {
    set end $start
  }

  for {set i $start} {$i <= $end} {incr i} {
    set oldvalue [sdnpbinin get point $i value]
    sdnpbinin set session $ssesn point $i value [expr !$oldvalue]
  }
}
