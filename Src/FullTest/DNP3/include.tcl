variable TMW_DIR_LibTMW [file dirname [info script]]

variable TMW_DIR_Test "$TMW_DIR_LibTMW\\..\\..\\"


####################################Case_DNP3####################################
variable TMW_DIR_Case "$TMW_DIR_Test\\Case"
variable TMW_DIR_DNP3 "$TMW_DIR_Case\\DNP3"
variable TMW_DIR_DNP3_Case_1 "$TMW_DIR_DNP3\\Case_D1"
variable TMW_DIR_DNP3_Case_2 "$TMW_DIR_DNP3\\Case_D2"

source "$TMW_DIR_DNP3_Case_1\\Case_D1.tcl"
source "$TMW_DIR_DNP3_Case_2\\Case_D2.tcl"

####################################Suite_DNP3####################################
variable TMW_DIR_FullTest "$TMW_DIR_Test\\FullTest"
variable TMW_DIR_FullTest_DNP3 "$TMW_DIR_FullTest\\DNP3"

source "$TMW_DIR_FullTest_DNP3\\DNP3.tcl"


####################################Parent#####################################
source "$TMW_DIR_DNP3_Case_1\\include.tcl"
source "$TMW_DIR_DNP3_Case_2\\include.tcl"

####################################Utils######################################

variable TMW_DIR_Lib_Public_Utils "$TMW_DIR_Lib_Public\\Util"
source "$TMW_DIR_Lib_Public_Utils\\util.tcl"
