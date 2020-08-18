global TMW_DIR_Src
global TMW_DIR_Input
global TMW_DIR_Output
global TMW_DIR_Lib
global TMW_DIR_Case
#
# ####################################Lib_DNP3####################################
variable TMW_DIR_Lib_DNP3_TMW "$TMW_DIR_Lib\\DNP3\\TMW"
variable TMW_DIR_Lib_DNP3_TMW_Common "$TMW_DIR_Lib_DNP3_TMW\\Common"
variable TMW_DIR_Lib_DNP3_TMW_BinaryInput "$TMW_DIR_Lib_DNP3_TMW\\BinaryInput"
#
#
source "$TMW_DIR_Lib_DNP3_TMW_Common\\MasterSlave.tcl"
source "$TMW_DIR_Lib_DNP3_TMW_BinaryInput\\BISdnpDatabase.tcl"
#
# ####################################Lib_DUT####################################

variable TMW_DIR_Lib_DUT_EDR810 "$TMW_DIR_Lib\\DUT\\EDR-810"
variable TMW_DIR_Lib_DUT_EDR810_Firewall "$TMW_DIR_Lib_DUT_EDR810\\Firewall"
variable TMW_DIR_Lib_DUT_EDR810_Interface "$TMW_DIR_Lib_DUT_EDR810\\Interface"
#
source "$TMW_DIR_Lib_DUT_EDR810_Firewall\\EDR-810_DNP3Rules.tcl"
source "$TMW_DIR_Lib_DUT_EDR810_Interface\\EDR-810_DUTNetwork.tcl"
#

# ####################################Lib_Log####################################

variable TMW_DIR_Lib_Public "$TMW_DIR_Lib\\Public"

source "$TMW_DIR_Lib_Public\\Log\\Log.tcl"


# ####################################Lib_Excel####################################
# variable TMW_DIR_Lib_Public_Log "$TMW_DIR_Lib_Public\\Log"
# source "$TMW_DIR_Lib_Public_Log\\Log.tcl".

source "$TMW_DIR_Case\\EDR-810\\DNP3\\EDR-810_DNP3_D1\\EDR-810_DNP3_D1.tcl"
