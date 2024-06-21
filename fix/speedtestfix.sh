#!/bin/bash
# pewarna hidup
BGreen='\e[1;32m'
NC='\e[0m'

# Bersihkan layar
clear

# Hapus file speedtest lama jika ada
echo -e "${BGreen}Menghapus file speedtest lama jika ada...${NC}"
rm -rf /usr/bin/speedtest

# Menampilkan pesan untuk memulai pengunduhan
echo -e "${BGreen}Memulai pengunduhan speedtest...${NC}"
wget -q -O /usr/bin/speedtest https://raw.githubusercontent.com/kaccang/jamur/main/fix/speedtest.sh

# Mengubah izin agar file dapat dieksekusi
echo -e "${BGreen}Mengubah izin file speedtest agar dapat dieksekusi...${NC}"
chmod +x /usr/bin/speedtest

# Bersihkan layar
clear

# Menampilkan pesan bahwa setup selesai
echo -e "${BGreen}Setup selesai. Harap tunggu...${NC}"
sleep 2

# Menghapus skrip sementara jika ada
echo -e "${BGreen}Menghapus skrip sementara...${NC}"
rm -rf speedtestfix.sh

# Bersihkan layar
clear

# Menampilkan pesan bahwa sistem akan reboot dalam 5 detik
echo -e "${BGreen}Sistem akan reboot dalam 5 detik...${NC}"
sleep 5

# Melakukan reboot sistem
echo -e "${BGreen}Rebooting sekarang...${NC}"
reboot
