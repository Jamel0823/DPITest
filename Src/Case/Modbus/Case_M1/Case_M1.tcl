proc Run_Test_Case_M1 {{Mip} {Sip} {Channel}} {
  puts "Run_Test_Case_M1"

  set output_path "C:\\Program Files\\Triangle MicroWorks\\Protocol Test Harness\\DPITest\\Src\\Output\\Run_Test_Case_M2.txt"
  set result "openmbmaster, openmbslave"

  setOuput $output_path
  appendOuput $output_path $result
}
