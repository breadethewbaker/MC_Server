#!/bin/bash
> ipAddress.txt
echo -n 'server-ip=' >> ipAddress.txt
dig @resolver4.opendns.com myip.opendns.com +short >> ipAddress.txt
grep -v 'server-ip' server.properties > server.propertiesTwo
cat ipAddress.txt >> server.propertiesTwo
cat server.propertiesTwo > server.properties
java -Xmx1024M -Xms1024M -jar server.jar nogui
cat server.propertiesTwo > server.properties
rm server.propertiesTwo
