proc Run_FullTest_Modbus {} {
  set testId "Run_FullTest_DNP3"
  MX_TMW_LOG "|---------------------------------------------------------------------|" $testId
  MX_TMW_LOG "|ID: Run_FullTest_Modbus                                              |" $testId
  MX_TMW_LOG "|Title: Check Modbus all function                                     |" $testId
  MX_TMW_LOG "|Purpose: Test Modbus all function case to be filtered by Modbus FW   |" $testId
  MX_TMW_LOG "|Modbus Master should recevied correct response.                      |" $testId
  MX_TMW_LOG "|Description:                                                         |" $testId
  MX_TMW_LOG "|   N/A                                                               |" $testId
  MX_TMW_LOG "|---------------------------------------------------------------------|" $testId

  Run_Test_Case_M1 1 2 3

  MX_TMW_LOG "Run_Test_Case_D1, Run_Test_Case_D2" $testId

}
