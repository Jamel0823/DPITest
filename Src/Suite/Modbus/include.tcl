variable TMW_DIR_LibTMW [file dirname [info script]]

variable TMW_DIR_Test "$TMW_DIR_LibTMW\\..\\..\\"



####################################Case_Modbus####################################
variable TMW_DIR_Case "$TMW_DIR_Test\\Case"
variable TMW_DIR_Modbus "$TMW_DIR_Case\\Modbus"
variable TMW_DIR_Lib_Modbus_ReadCoil "$TMW_DIR_Modbus\\Case_ReadCoil"

source "$TMW_DIR_Lib_Modbus_ReadCoil\\ReadCoil.tcl"

####################################Suite_Modbus####################################
variable TMW_DIR_Suite "$TMW_DIR_Test\\Suite"
variable TMW_DIR_Suite_Modbus "$TMW_DIR_Suite\\Modbus"

source "$TMW_DIR_Suite_Modbus\\Test_Suite_Modbus.tcl"


####################################Parent####################################
source "$TMW_DIR_Lib_Modbus_ReadCoil\\include.tcl"
