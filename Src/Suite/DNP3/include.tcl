variable TMW_DIR_LibTMW [file dirname [info script]]

variable TMW_DIR_Test "$TMW_DIR_LibTMW\\..\\..\\"


####################################Case_DNP3####################################
variable TMW_DIR_Case "$TMW_DIR_Test\\Case"
variable TMW_DIR_DNP3 "$TMW_DIR_Case\\DNP3"
variable TMW_DIR_DNP3_Case_BinarytInput "$TMW_DIR_DNP3\\Case_BinaryInput"
variable TMW_DIR_DNP3_Case_BinarytOutput "$TMW_DIR_DNP3\\Case_BinaryOutput"

source "$TMW_DIR_DNP3_Case_BinarytInput\\BinaryInput.tcl"
source "$TMW_DIR_DNP3_Case_BinarytOutput\\BinaryOutput.tcl"

####################################Suite_DNP3####################################
variable TMW_DIR_Suite "$TMW_DIR_Test\\Suite"
variable TMW_DIR_Suite_DNP3 "$TMW_DIR_Suite\\DNP3"

source "$TMW_DIR_Suite_DNP3\\Test_Suite_DNP3.tcl"


####################################Parent####################################
source "$TMW_DIR_DNP3_Case_BinarytInput\\include.tcl"
source "$TMW_DIR_DNP3_Case_BinarytOutput\\include.tcl"
