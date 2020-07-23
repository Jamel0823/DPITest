global TMW_DIR_Src

variable TMW_DIR_Lib "$TMW_DIR_Src\\Lib"
variable TMW_DIR_Lib_Public "$TMW_DIR_Lib\\Public"

####################################Lib_DNP3####################################
variable TMW_DIR_Lib_DNP3 "$TMW_DIR_Lib\\DNP3"
variable TMW_DIR_Lib_DNP3_Common "$TMW_DIR_Lib_DNP3\\Common"
variable TMW_DIR_Lib_DNP3_BinaryInput "$TMW_DIR_Lib_DNP3\\BinaryInput"


source "$TMW_DIR_Lib_DNP3_Common\\setMS.tcl"
source "$TMW_DIR_Lib_DNP3_BinaryInput\\setBISdnpDB.tcl"

####################################Lib_DUT####################################
variable TMW_DIR_Lib_DUT "$TMW_DIR_Lib\\DUT"
variable TMW_DIR_Lib_DUT_Firewall "$TMW_DIR_Lib_DUT\\Firewall"
variable TMW_DIR_Lib_DUT_Interface "$TMW_DIR_Lib_DUT\\Interface"

source "$TMW_DIR_Lib_DUT_Interface\\setDUTNetwork.tcl"
source "$TMW_DIR_Lib_DUT_Firewall\\setDNP3Rules.tcl"

####################################Lib_Excel####################################
variable TMW_DIR_Lib_Public_Excel "$TMW_DIR_Lib_Public\\Excel"
source "$TMW_DIR_Lib_Public_Excel\\setOutput.tcl"
