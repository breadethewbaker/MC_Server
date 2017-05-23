#!/bin/bash
str=""

#uncomment the line beneath this if you want to run an ipv6 server
#str=$(curl ipv6.icanhazip.com)

 > ipAddress.txt
echo -n 'server-ip=' >> ipAddress.txt
echo -n $str >> ipAddress.txt
grep -v 'server-ip' server.properties > server.propertiesTwo
cat ipAddress.txt >> server.propertiesTwo
cat server.propertiesTwo > server.properties

rm server.propertiesTwo
gnome-terminal -e 'java -Xmx256M -Xms256M -jar minecraft_server.1.11.2.jar nogui'
