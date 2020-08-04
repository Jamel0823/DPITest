# global TMW_DIR_Src
#
# variable TMW_DIR_Lib "$TMW_DIR_Src\\Lib"
# variable TMW_DIR_Lib_Public "$TMW_DIR_Lib\\Public"
#
# ####################################Lib_DNP3####################################
# variable TMW_DIR_Lib_Modbus "$TMW_DIR_Lib\\Modbus"
# variable TMW_DIR_Lib_Modbus_ReadCoil "$TMW_DIR_Lib_Modbus\\ReadCoil"
# variable TMW_DIR_Lib_Modbus_Common "$TMW_DIR_Lib_Modbus\\Common"
#
# source "$TMW_DIR_Lib_Modbus_ReadCoil\\setCoilDB.tcl"
# source "$TMW_DIR_Lib_Modbus_Common\\setMS.tcl"
#
# ####################################Lib_Public####################################
# variable TMW_DIR_Lib_DUT "$TMW_DIR_Lib\\DUT"
# variable TMW_DIR_Lib_DUT_Firewall "$TMW_DIR_Lib_DUT\\Firewall"
# variable TMW_DIR_Lib_DUT_Interface "$TMW_DIR_Lib_DUT\\Interface"
#
# source "$TMW_DIR_Lib_DUT_Interface\\setDUTNetwork.tcl"
# source "$TMW_DIR_Lib_DUT_Firewall\\setModbusRules.tcl"
#
# ####################################Lib_Excel####################################
# variable TMW_DIR_Lib_Public_Log "$TMW_DIR_Lib_Public\\Log"
# source "$TMW_DIR_Lib_Public_Log\\Log.tcl"

global TMW_DIR_Case
source "$TMW_DIR_Case\\EDR-G9010\\Modbus\\Case_M2\\Case_M2.tcl"
