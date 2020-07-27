proc createLogFile {{path}} {
  set fileID [open $path "w"]
  close $fileID
}

proc appendLogInfo {{path} {result}} {
  set fileID [open $path "a"]
  puts -nonewline $fileID $result
  close $fileID
}
