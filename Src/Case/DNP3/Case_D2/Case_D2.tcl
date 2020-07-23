proc Run_Test_Case_D2 {{Mip} {Sip} {Address}} {
  puts "Run_Test_Case_D2"

  set output_path "C:\\Program Files\\Triangle MicroWorks\\Protocol Test Harness\\DPITest\\Src\\Output\\Run_Test_Case_D2.txt"
  closednpmaster
  closednpslave

  set result "closednpmaster, closednpslave"
  setOuput $output_path
  appendOuput $output_path $result
  
  setInterfaceLan
}
