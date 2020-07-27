proc Run_Test_Case_D2 {{Mip} {Sip} {Address}} {
  puts "Run_Test_Case_D2"

  closednpmaster
  closednpslave
  set result "openmbmaster, openmbslave"

  MX_TMW_LOG $result "Run_Test_Case_D2"

  setInterfaceLan
}
