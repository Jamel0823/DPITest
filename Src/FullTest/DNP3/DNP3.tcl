proc Run_FullTest_DNP3 {} {
  set testId "Run_FullTest_DNP3"
  MX_TMW_LOG "|---------------------------------------------------------------------|" $testId
  MX_TMW_LOG "|ID: Run_FullTest_DNP3                                                |" $testId
  MX_TMW_LOG "|Title: Check DNP3 all function                                       |" $testId
  MX_TMW_LOG "|Purpose: Test DNP3 all function case to be filtered by DNP3 FW       |" $testId
  MX_TMW_LOG "|DNP3 Master should recevied correct response.                        |" $testId
  MX_TMW_LOG "|Description:                                                         |" $testId
  MX_TMW_LOG "|   N/A                                                               |" $testId
  MX_TMW_LOG "|---------------------------------------------------------------------|" $testId

  Run_Test_Case_D1 1 1 1
  Run_Test_Case_D2 1 2 3

  MX_TMW_LOG "Run_Test_Case_D1, Run_Test_Case_D2" $testId
}
