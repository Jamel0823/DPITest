proc Run_Test_Case_D1 {{Mip} {Sip} {Channel}} {
  puts "Run_Test_Case_D1"



  opendnpmaster "192.168.127.49"
  opendnpslave

  set result "openmbmaster, openmbslave"
  MX_TMW_LOG $result "Run_Test_Case_D1"

  setInterfaceLan
}
