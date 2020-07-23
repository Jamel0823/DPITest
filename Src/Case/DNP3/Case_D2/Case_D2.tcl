proc Run_Test_Case_D2 {{Mip} {Sip} {Address}} {
  puts "Run_Test_Case_D2"

  global TMW_DIR_Output
  set output_path "$TMW_DIR_Output\\Run_Test_Case_D2.txt"
  
  closednpmaster
  closednpslave

  set result "closednpmaster, closednpslave"
  setOuput $output_path
  appendOuput $output_path $result

  setInterfaceLan
}
