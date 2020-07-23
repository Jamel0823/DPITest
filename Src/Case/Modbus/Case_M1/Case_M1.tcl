proc Run_Test_Case_M1 {{Mip} {Sip} {Channel}} {
  puts "Run_Test_Case_M1"

  global TMW_DIR_Output
  set output_path "$TMW_DIR_Output\\Run_Test_Case_M1.txt"

  set result "openmbmaster, openmbslave"

  setOuput $output_path
  appendOuput $output_path $result
}
