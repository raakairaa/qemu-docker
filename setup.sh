#!/bin/bash

NC="\e[0m"
GREEN="\e[92m"
YELLOW="\e[93m"
BLUE="\e[94m"

clear
echo -e "${BLUE}"
echo "====================================="
echo "            Setup Terminal"
echo "====================================="
echo -e "${NC}"

loading() {
  dots=("⠋" "⠙" "⠹" "⠸" "⠼" "⠴" "⠦" "⠧" "⠇" "⠏")
  for i in {1..12}; do
    echo -ne "\r${YELLOW}${dots[$((i%${#dots[@]}))]} $1...${NC}"
    sleep 0.15
  done
  echo -ne "\r${GREEN}$1 selesai${NC}\n"
}

loading "Memberikan izin eksekusi"
chmod +x restore.sh && chmod +x backup.sh

loading "Memasang Python3"
sudo apt update -y >/dev/null 2>&1
sudo apt install python3 -y >/dev/null 2>&1

loading "Menjalankan skrip Python"
python3 sc.py

echo -e "\n${GREEN}Selesai. Semua proses berhasil.${NC}"
echo -e "${BLUE}Silakan lanjut menjalankan perintah berikutnya.${NC}"
echo
