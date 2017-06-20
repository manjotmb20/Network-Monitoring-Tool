#!/bin/bash
func(){
grep 'ARP' totalpacket>arppackets
echo $(awk '{
if($3=="Request")
print $1,$3,$5,$7,$9
if($3=="Reply")
print $1,$3,$4,$6,$8}' arppackets>resultip)
}
func1(){
grep 'IP' totalpacket>ippackets
echo "$(awk '{print $1,$3,$4,$6,$7,$9,$19}' ippackets>ipresult)"
}
func2(){
grep 'UDP' totalpacket>udppackets
echo "$(awk '{print $1,$2,$4,$9,$10,$11,$13,$14}' udppackets>udpresult)"
}
func1ip(){
grep 'IP' totalpacket>ippackets
echo "$(awk '{print $3,$6}' ippackets>oipresult)"
}
func1port(){
grep 'IP' totalpacket>ippackets
echo "$(awk '{print $4,$7}' ippackets>pipresult)"
}
func2ip(){
grep 'UDP' totalpacket>udppackets
echo "$(awk '{print $10,$13}' ippackets>oudpresult)"
}
func2port(){
grep 'UDP' totalpacket>udppackets
echo "$(awk '{print $11,$14}' ippackets>pudpresult)"
}


