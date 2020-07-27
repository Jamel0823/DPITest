proc Run_FullTest_Modbus {} {
  puts "Run_FullTest_Modbus"

  Run_Test_Case_M1 1 2 3

  set result "Run_Test_Case_D1, Run_Test_Case_D2"

  MX_TMW_LOG $result "Run_FullTest_Modbus"

}
