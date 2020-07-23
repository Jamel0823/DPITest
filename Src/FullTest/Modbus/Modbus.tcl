proc Run_FullTest_Modbus {} {
  puts "Run_FullTest_Modbus"

  global TMW_DIR_Output
  set output_path "$TMW_DIR_Output\\Run_FullTest_Modbus.txt"

  Run_Test_Case_M1 1 2 3

  set result "Run_Test_Case_M1"

  setOuput $output_path
  appendOuput $output_path $result
}
