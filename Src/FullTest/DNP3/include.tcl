variable TMW_DIR_LibTMW [file dirname [info script]]

variable TMW_DIR_Test "$TMW_DIR_LibTMW\\..\\..\\"


####################################Case_DNP3####################################
variable TMW_DIR_Case "$TMW_DIR_Test\\Case"
variable TMW_DIR_DNP3 "$TMW_DIR_Case\\DNP3"
variable TMW_DIR_DNP3_Case_1 "$TMW_DIR_DNP3\\Case_1"
variable TMW_DIR_DNP3_Case_2 "$TMW_DIR_DNP3\\Case_2"

source "$TMW_DIR_DNP3_Case_1\\Case_1.tcl"
source "$TMW_DIR_DNP3_Case_2\\Case_2.tcl"

####################################Suite_DNP3####################################
variable TMW_DIR_FullTest "$TMW_DIR_Test\\FullTest"
variable TMW_DIR_FullTest_DNP3 "$TMW_DIR_FullTest\\DNP3"

source "$TMW_DIR_FullTest_DNP3\\FullTest_DNP3.tcl"


####################################Parent####################################
source "$TMW_DIR_DNP3_Case_1\\include.tcl"
source "$TMW_DIR_DNP3_Case_2\\include.tcl"
