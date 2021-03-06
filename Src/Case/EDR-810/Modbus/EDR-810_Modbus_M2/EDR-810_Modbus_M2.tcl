proc Run_Test_EDR-810_Modbus_M2 {{Mip} {Sip} {Channel}} {
  # set testId "Run_Test_Case_M1"
  # MX_TMW_LOG "|---------------------------------------------------------------------|" $testId
  # MX_TMW_LOG "|ID: Run_Test_Case_M1                                                 |" $testId
  # MX_TMW_LOG "|Title: Check Modbus function code 0x1: Read Coils Accept             |" $testId
  # MX_TMW_LOG "|Purpose: Test Modbus function code 0x1 to be filtered by modbus FW   |" $testId
  # MX_TMW_LOG "|Modbus Master should recevied correct response.                      |" $testId
  # MX_TMW_LOG "|Description:                                                         |" $testId
  # MX_TMW_LOG "|   N/A                                                               |" $testId
  # MX_TMW_LOG "|---------------------------------------------------------------------|" $testId

  # openmbmaster
  # openmbslave
  # MX_TMW_LOG "openmbmaster, openmbslave" $testId
  tmwlog insert $Mip
  tmwlog insert $Sip
  tmwlog insert $Channel
  tmwlog insert "M2 proc is executed."
}

tmwlog insert "EDR-810 Case_M2.tcl is sourced."
