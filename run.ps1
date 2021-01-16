#uncomment the line beneath this if you want to run an ipv6 server
#str=$(curl ipv6.icanhazip.com)

touch ipAddress.txt
$ipPrefix="server-ip="
$ipAddr=(Invoke-WebRequest ifconfig.me/ip).Content.Trim()
Write-Output $ipPrefix$ipAddr >> ipAddress.txt
gc server.properties | ?{$_ -notmatch 'server-ip'} > server.propertiesTwo
cat ipAddress.txt >> server.propertiesTwo
cat server.propertiesTwo > server.properties
cat ipAddress.txt | Write-Host
rm ipAddress.txt

java -Xmx1028M -Xms1028M -jar server.jar --nogui

Write-Host "Server Closed"

cat server.propertiesTwo > server.properties
rm server.propertiesTwo