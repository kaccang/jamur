#!/bin/bash
# Quick Setup | Script Setup Manager
# Edition: Stable Edition 1.0
# Author: Hemat3D
# Kuota Habisss
# © Copyright 2024
# =========================================

# Pewarna warna
BGreen='\e[1;32m'
NC='\e[0m'

clear
cd
rm -rf debian.sh
rm -rf /usr/bin/clearcache
rm -rf /usr/bin/menu

echo -e "${BGreen}Update Menu..${NC}"
sleep 1

# Mengunduh skrip clearcache dan menu dari repositori givpn
wget -q -O /usr/bin/clearcache "https://raw.githubusercontent.com/givpn/AutoScriptXray/master/menu/clearcache.sh"
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/givpn/AutoScriptXray/master/menu/menu.sh"
sleep 1

# Memberikan izin eksekusi pada skrip clearcache dan menu
chmod +x /usr/bin/clearcache
chmod +x /usr/bin/menu

clear
rm -rf debian.sh

echo -e "${BGreen}Auto reboot in 5 seconds..${NC}"
sleep 5

# Melakukan reboot menggunakan perintah /sbin/reboot
/sbin/reboot

