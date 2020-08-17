proc Run_Test_EDR-810_DNP3_D1 {{Mip} {Sip} {Channel}} {
  set logID "Run_Test_EDR-810_DNP3_D1 "
  MX_TMW_LOG "|---------------------------------------------------------------------|" $logID
	MX_TMW_LOG "|ID: Run_Test_Case_D1                                                 |" $logID
	MX_TMW_LOG "|Title: Check DNP3 function case 1: Read Binary Input                 |" $logID
	MX_TMW_LOG "|Purpose: Test DNP3 function case 1 to be filtered by DNP3 FW         |" $logID
	MX_TMW_LOG "|DNP3 Master should recevied correct response.                        |" $logID
	MX_TMW_LOG "|Description:                                                         |" $logID
	MX_TMW_LOG "|   N/A                                                               |" $logID
	MX_TMW_LOG "|---------------------------------------------------------------------|" $logID

  opendnpmaster "192.168.127.49"
  MX_TMW_LOG "Step1 opendnpmaster 192.168.127.49" $logID
  opendnpslave
  MX_TMW_LOG "Step1 opendnpslave" $logID


  setInterfaceLan
  # tmwlog insert $Mip
  # tmwlog insert $Sip
  # tmwlog insert $Channel
  # tmwlog insert "D1 porc is executed."
}

# tmwlog insert "EDR-810 Case_D1.tcl is sourced."
