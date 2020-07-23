proc Run_Test_Case_D1 {{Mip} {Sip} {Channel}} {
  puts "Run_Test_Case_D1"

  set output_path "C:\\Program Files\\Triangle MicroWorks\\Protocol Test Harness\\DPITest\\Src\\Output\\Run_Test_Case_D1.txt"
  opendnpmaster "192.168.127.49"
  opendnpslave

  set result "opendnpmaster, opendnpslave"
  setOuput $output_path
  appendOuput $output_path $result

  setInterfaceLan
}
