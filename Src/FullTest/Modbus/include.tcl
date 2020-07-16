variable TMW_DIR_LibTMW [file dirname [info script]]

variable TMW_DIR_Test "$TMW_DIR_LibTMW\\..\\..\\"



####################################Case_Modbus####################################
variable TMW_DIR_Case "$TMW_DIR_Test\\Case"
variable TMW_DIR_Modbus "$TMW_DIR_Case\\Modbus"
variable TMW_DIR_Lib_Modbus_Case_1 "$TMW_DIR_Modbus\\Case_1"

source "$TMW_DIR_Lib_Modbus_Case_1\\Case_1.tcl"

####################################Suite_Modbus####################################
variable TMW_DIR_FullTest "$TMW_DIR_Test\\FullTest"
variable TMW_DIR_FullTest_Modbus "$TMW_DIR_FullTest\\Modbus"

source "$TMW_DIR_FullTest_Modbus\\FullTest_Modbus.tcl"


####################################Parent####################################
source "$TMW_DIR_Lib_Modbus_Case_1\\include.tcl"
