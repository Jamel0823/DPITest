proc Run_Test_EDR-810_DNP3_D1 {{Mip} {Sip} {Channel}} {
  set logID "Run_Test_EDR-810_DNP3_D1 "
  OPEN_MX_TMW_LOG_FILE $logID
	MX_TMW_LOG "ID: Run_Test_EDR-810_DNP3_D1" $logID
	MX_TMW_LOG "Title: Check DNP3 function case 1: Read Binary Input" $logID
	MX_TMW_LOG "Purpose: Test DNP3 function case 1 can be filtered by DNP3 FW" $logID
	MX_TMW_LOG "Criteria: DNP3 Master should recevied correct response." $logID
	MX_TMW_LOG "Description:" $logID
################################################################################
  global EDR_810_PBPara
  # puts [dict get $EDR_810_PBPara Com]
  MX_TMW_LOG "#proc: connect to DUT via [dict get $EDR_810_PBPara Com]" $logID
  opendnpmaster $Mip
  MX_TMW_LOG "#proc: opendnpmaster 192.168.127.49" $logID
  opendnpslave
  MX_TMW_LOG "#proc: opendnpslave" $logID

  setInterfaceLan
  MX_TMW_LOG "#proc: set DUT Lan interface $Sip" $logID
  # tmwlog insert $Mip
  # tmwlog insert $Sip
  # tmwlog insert $Channel
  # tmwlog insert "D1 porc is executed."
}

# tmwlog insert "EDR-810 Case_D1.tcl is sourced."
