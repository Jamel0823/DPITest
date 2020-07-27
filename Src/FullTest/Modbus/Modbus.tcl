proc Run_FullTest_Modbus {} {
  puts "Run_FullTest_Modbus"

  global TMW_DIR_Output
  set output_path "$TMW_DIR_Output\\Run_FullTest_Modbus.txt"

  Run_Test_Case_M1 1 2 3

  set result "Run_Test_Case_M1"

  createLogFile $output_path
  appendLogInfo $output_path $result
}
