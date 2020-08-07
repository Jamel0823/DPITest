proc Run_Test_EDR-G9010_DNP3_D2 {{Mip} {Sip} {Address}} {
  # set testId "Run_Test_Case_D2"
  # MX_TMW_LOG "|---------------------------------------------------------------------|" $testId
  # MX_TMW_LOG "|ID: Run_Test_Case_D2                                                 |" $testId
  # MX_TMW_LOG "|Title: Check DNP3 function case 2: Read Binary Input                 |" $testId
  # MX_TMW_LOG "|Purpose: Test DNP3 function case 2 to be filtered by DNP3 FW         |" $testId
  # MX_TMW_LOG "|DNP3 Master should recevied correct response.                        |" $testId
  # MX_TMW_LOG "|Description:                                                         |" $testId
  # MX_TMW_LOG "|   N/A                                                               |" $testId
  # MX_TMW_LOG "|---------------------------------------------------------------------|" $testId
  #
  # closednpmaster
  # closednpslave
  # MX_TMW_LOG "closednpmaster, closednpslave" "Run_Test_Case_D2"
  #
  # setInterfaceLan

  tmwlog insert $Mip
  tmwlog insert $Sip
  tmwlog insert $Address
  tmwlog insert "D2 proc is executed."
}

tmwlog insert "EDR-G9010 Case_D2.tcl is sourced."
