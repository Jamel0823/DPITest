variable TMW_DIR_LibTMW [file dirname [info script]]

variable TMW_DIR_Test "$TMW_DIR_LibTMW\\..\\..\\..\\"

####################################Lib_DNP3####################################
variable TMW_DIR_Lib "$TMW_DIR_Test\\Lib"
variable TMW_DIR_Lib_Modbus "$TMW_DIR_Lib\\Modbus"
variable TMW_DIR_Lib_Modbus_ReadCoil "$TMW_DIR_Lib_Modbus\\ReadCoil"
variable TMW_DIR_Lib_Modbus_Common "$TMW_DIR_Lib_Modbus\\Common"


source "$TMW_DIR_Lib_Modbus_ReadCoil\\setCoilDB.tcl"
source "$TMW_DIR_Lib_Modbus_Common\\setMS.tcl"
source "$TMW_DIR_Lib_Modbus_Common\\setModbusRules.tcl"

####################################Lib_Public####################################
variable TMW_DIR_Lib_Public "$TMW_DIR_Lib\\Public"
variable TMW_DIR_Lib_Public_Excel "$TMW_DIR_Lib_Public\\Excel"
variable TMW_DIR_Lib_Public_Utils "$TMW_DIR_Lib_Public\\Util"
variable TMW_DIR_Lib_DUT "$TMW_DIR_Lib\\DUT"
variable TMW_DIR_Lib_DUT_Firewall "$TMW_DIR_Lib_DUT\\Firewall"
variable TMW_DIR_Lib_DUT_Interface "$TMW_DIR_Lib_DUT\\Interface"

source "$TMW_DIR_Lib_DUT_Interface\\setDUTNetwork.tcl"
source "$TMW_DIR_Lib_DUT_Firewall\\setDNP3Rules.tcl"
source "$TMW_DIR_Lib_Public_Utils\\util.tcl"
