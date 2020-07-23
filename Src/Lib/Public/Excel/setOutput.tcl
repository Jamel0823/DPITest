proc setOuput {{path}} {
  set fileID [open $path "w"]
  close $fileID
}

proc appendOuput {{path} {result}} {
  set fileID [open $path "a"]
  puts -nonewline $fileID $result
  close $fileID
}
