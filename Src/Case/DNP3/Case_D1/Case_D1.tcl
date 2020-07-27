proc Run_Test_Case_D1 {{Mip} {Sip} {Channel}} {
  puts "Run_Test_Case_D1"

  global TMW_DIR_Output
  set output_path "$TMW_DIR_Output\\Run_Test_Case_D1.txt"

  opendnpmaster "192.168.127.49"
  opendnpslave

  set result "opendnpmaster, opendnpslave"
  createLogFile $output_path
  appendLogInfo $output_path $result

  setInterfaceLan
}
