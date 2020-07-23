global TMW_DIR_Src

####################################Case_Modbus#################################
variable TMW_DIR_Case "$TMW_DIR_Src\\Case"
variable TMW_DIR_Modbus "$TMW_DIR_Case\\Modbus"
variable TMW_DIR_Lib_Modbus_Case_1 "$TMW_DIR_Modbus\\Case_M1"

source "$TMW_DIR_Lib_Modbus_Case_1\\Case_M1.tcl"

####################################Suite_Modbus################################
variable TMW_DIR_FullTest "$TMW_DIR_Src\\FullTest"
variable TMW_DIR_FullTest_Modbus "$TMW_DIR_FullTest\\Modbus"

source "$TMW_DIR_FullTest_Modbus\\Modbus.tcl"


####################################Parent######################################
source "$TMW_DIR_Lib_Modbus_Case_1\\include.tcl"


# ####################################Utils######################################
#
variable TMW_DIR_Lib_Public_Utils "$TMW_DIR_Lib_Public\\Util"
source "$TMW_DIR_Lib_Public_Utils\\util.tcl"
