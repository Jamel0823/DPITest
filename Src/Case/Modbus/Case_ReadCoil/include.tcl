variable TMW_DIR_LibTMW [file dirname [info script]]

variable TMW_DIR_Test "$TMW_DIR_LibTMW\\..\\..\\..\\"

####################################Lib_DNP3####################################
variable TMW_DIR_Lib "$TMW_DIR_Test\\Lib"
variable TMW_DIR_Lib_Modbus "$TMW_DIR_Lib\\Modbus"
variable TMW_DIR_Lib_Modbus_ReadCoil "$TMW_DIR_Lib_Modbus\\Lib_ReadCoil"
variable TMW_DIR_Lib_Modbus_Common "$TMW_DIR_Lib_Modbus\\Lib_Common"


source "$TMW_DIR_Lib_Modbus_ReadCoil\\setCoilDB.tcl"
source "$TMW_DIR_Lib_Modbus_Common\\setMS.tcl"

####################################Lib_Public####################################
variable TMW_DIR_Lib_Public "$TMW_DIR_Lib\\Public"
variable TMW_DIR_Lib_Public_Excel "$TMW_DIR_Lib_Public\\Excel"
