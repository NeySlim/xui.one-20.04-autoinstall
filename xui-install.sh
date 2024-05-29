#!/bin/bash
#Script-By : GSX - X Person ! 
#Adapted by NeySlim
txtred=$(tput bold ; tput setaf 1) # Vija-Kuqe
txtgreen=$(tput bold ; tput setaf 2) # Vija-Jeshile
txtyellow=$(tput bold ; tput setaf 3) # Vija-Verdhe
clear
echo ""
echo "${txtyellow} ┌──────────────────────────────────────┐ "
echo "${txtyellow} │ Preparing System to Install Xui.One  │ "
echo "${txtyellow} └──────────────────────────────────────┘ "
sleep 3s
cd
echo "${txtred} ┌────────────────────────────────────┐ "
echo "${txtred} │     Do you want to Continue ?      │ "
echo "${txtred} └────────────────────────────────────┘ "
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "You Choosed Yes... Instaliing XUI.One"; break;;
        No ) exit;;
    esac
done
sleep 4s
apt-get install unzip
clear
cd /tmp
echo "${txtyellow} ┌────────────────────────────────────┐ "
echo "${txtyellow} │     Downloading XUI.One Files      │ "
echo "${txtyellow} └────────────────────────────────────┘ "
wget https://github.com/NeySlim/xui.one-20.04-autoinstall/releases/download/mainfiles/xuifull.zip
unzip -o xuifull.zip
sleep 3s
unzip -o XUI.One-crack
sleep 3s
unzip -o XUI_1.5.12
chmod +x install
echo "${txtyellow} ┌─────────────────────────────────────┐ "
echo "${txtyellow} │  Opening Official Installer of XUI  │ "
echo "${txtyellow} └─────────────────────────────────────┘ "
sleep 2s
./install
echo ""
echo "${txtred} ┌─────────────────────────┐ "
echo "${txtred} │ Inserting Xui.One Crack │ "
echo "${txtred} └─────────────────────────┘ "
chmod -R 777 xui-crack
cd xui-crack
chmod +x install.sh
./install.sh
echo "${txtyellow} ┌─────────────────────────────────┐ "
echo "${txtyellow} │ Procces Done. Exporting Info... │ "
echo "${txtyellow} └─────────────────────────────────┘ "
sleep 2s
systemctl enable xuione
echo "${txtred} ┌────────────────────────────┐ "
echo "${txtred} │   Please Take Mysql Keys   │ "
echo "${txtred} └────────────────────────────┘ "
echo ""
echo ""
cd
cd /tmp && tail -n 4 credentials.txt
sleep 4s
echo "${txtred} ┌────────────────────────────┐ "
echo "${txtred} │  XUI Status Information    │ "
echo "${txtred} └────────────────────────────┘ "
cd /home/xui
./status
