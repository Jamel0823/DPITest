proc Run_FullTest_DNP3 {} {
  puts "Run_FullTest_DNP3"

  Run_Test_Case_D1 1 1 1
  Run_Test_Case_D2 1 2 3

  set result "Run_Test_Case_D1, Run_Test_Case_D2"

  MX_TMW_LOG $result "Run_FullTest_DNP3"
}
