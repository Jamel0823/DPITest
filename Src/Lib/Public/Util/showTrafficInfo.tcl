# 
# This file and its content is copyright of Moxa Inc. - © Moxa 2020.
# All rights reserved.
# Any redistribution or reproduction of part or all of the contents in any form is prohibited.
# You may not, except with our express written permission, distribute or exploit the content.
#

proc show_traffic_info {{id ""} {stat} {usedTime} {dataOutput}} {
	MX_TMW_LOG "\[PACKET\] stat: $stat" $id
	MX_TMW_LOG "\[PACKET\] usedTime: $usedTime" $id
	upvar 1 $dataOutput data
	MX_TMW_LOG "\[PACKET\] dataOutput:" $id
	foreach value [lsort [array names data]] {
		MX_TMW_LOG "\[PACKET\] $value: $data($value)" $id
	}
}
