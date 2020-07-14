variable TMW_DIR_LibTMW [file dirname [info script]]

variable TMW_DIR_Test "$TMW_DIR_LibTMW\\..\\..\\..\\"

####################################Lib_DNP3####################################
variable TMW_DIR_Lib "$TMW_DIR_Test\\Lib"
variable TMW_DIR_Lib_DNP3 "$TMW_DIR_Lib\\DNP3"
variable TMW_DIR_Lib_DNP3_Common "$TMW_DIR_Lib_DNP3\\Lib_Common"
variable TMW_DIR_Lib_DNP3_BinaryInput "$TMW_DIR_Lib_DNP3\\Lib_BinaryInput"


source "$TMW_DIR_Lib_DNP3_Common\\setMS.tcl"
source "$TMW_DIR_Lib_DNP3_BinaryInput\\setBISdnpDB.tcl"

####################################Lib_Public####################################
variable TMW_DIR_Lib_Public "$TMW_DIR_Lib\\Public"
variable TMW_DIR_Lib_Public_Excel "$TMW_DIR_Lib_Public\\Excel"
