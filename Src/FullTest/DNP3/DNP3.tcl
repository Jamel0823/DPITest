proc Run_FullTest_DNP3 {} {
  puts "Run_FullTest_DNP3"
  
  set output_path "C:\\Program Files\\Triangle MicroWorks\\Protocol Test Harness\\DPITest\\Src\\Output\\Run_FullTest_DNP3.txt"
  Run_Test_Case_D1 1 1 1
  Run_Test_Case_D2 1 2 3

  set result "Run_Test_Case_D1, Run_Test_Case_D2"

  setOuput $output_path
  appendOuput $output_path $result
}
