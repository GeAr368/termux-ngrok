#!/bin/dash
# Developed by Cyber Tonian
update='\033[1;32m'
echo "$update Updating Repository..."
apt update && upgrade -y
apt install -y wget
clear
k='LOVE'
echo
echo "${k}╭━━━╮╱╱╱╭╮╱╱╱╱╱╱╱╭━━━━╮";
echo "${k}┃╭━╮┃╱╱╱┃┃╱╱╱╱╱╱╱┃╭╮╭╮┃";
echo "${k}┃┃╱╰╋╮╱╭┫╰━┳━━┳━╮╰╯┃┃┣┻━┳━╮╭┳━━┳━╮";
echo "${k}┃┃╱╭┫┃╱┃┃╭╮┃┃━┫╭╯╱╱┃┃┃╭╮┃╭╮╋┫╭╮┃╭╮╮";
echo "${k}┃╰━╯┃╰━╯┃╰╯┃┃━┫┃╱╱╱┃┃┃╰╯┃┃┃┃┃╭╮┃┃┃┃";
echo "${k}╰━━━┻━╮╭┻━━┻━━┻╯╱╱╱╰╯╰━━┻╯╰┻┻╯╰┻╯╰╯";
echo "${k}╱╱╱╱╭━╯┃";
echo "${k}╱╱╱╱╰━━╯";

             

echo
echo "Do You Want To Install Ngrok [if Yes type (Y) and if No type (n)]"
read option
case $option in
y)
echo
echo "Downloading Termux-ngrok..."
case `dpkg --print-architecture` in
aarch64)
    architectureURL="arm64" ;;
arm)
    architectureURL="arm" ;;
armhf)
    architectureURL="armhf" ;;
amd64)
    architectureURL="amd64" ;;
i*86)
    architectureURL="i386" ;;
x86_64)
    architectureURL="amd64" ;;
*)
    echo "Unknown Architecture"
esac

wget "https://github.com/tchelospy/NgrokTest/blob/master/ngrok-stable-linux-${architectureURL}.zip?raw=true" -O ngrok.zip
unzip ngrok.zip
cat ngrok > /data/data/com.termux/files/usr/bin/ngrok
chmod 700 /data/data/com.termux/files/usr/bin/ngrok
rm ngrok ngrok.zip
clear
echo "${k}███╗   ██╗ ██████╗ ██████╗  ██████╗ ██╗  ██╗";
echo "${k}████╗  ██║██╔════╝ ██╔══██╗██╔═══██╗██║ ██╔╝";
echo "${k}██╔██╗ ██║██║  ███╗██████╔╝██║   ██║█████╔╝ ";
echo "${k}██║╚██╗██║██║   ██║██╔══██╗██║   ██║██╔═██╗ ";
echo "${k}██║ ╚████║╚██████╔╝██║  ██║╚██████╔╝██║  ██╗";
echo "${k}╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝";


echo
echo "Command example (ngrok http 3333)"
;;

n)
clear
echo "You wished, not to install ngrok. Hence, aborted :("
echo
esac



