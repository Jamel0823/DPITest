proc Run_Test_Case_D1 {{Mip} {Sip} {Channel}} {
  # set testId "Run_Test_Case_D1"
  # MX_TMW_LOG "|---------------------------------------------------------------------|" $testId
	# MX_TMW_LOG "|ID: Run_Test_Case_D1                                                 |" $testId
	# MX_TMW_LOG "|Title: Check DNP3 function case 1: Read Binary Input                 |" $testId
	# MX_TMW_LOG "|Purpose: Test DNP3 function case 1 to be filtered by DNP3 FW         |" $testId
	# MX_TMW_LOG "|DNP3 Master should recevied correct response.                        |" $testId
	# MX_TMW_LOG "|Description:                                                         |" $testId
	# MX_TMW_LOG "|   N/A                                                               |" $testId
	# MX_TMW_LOG "|---------------------------------------------------------------------|" $testId
  #
  # opendnpmaster "192.168.127.49"
  # opendnpslave
  # MX_TMW_LOG "Step1 openmbmaster 192.168.127.49, openmbslave" $testId
  #
  # setInterfaceLan
  tmwlog insert $Mip
  tmwlog insert $Sip
  tmwlog insert $Channel
  tmwlog insert "D1 porc is executed."
}

tmwlog insert "EDR-810 Case_D1.tcl is sourced."
