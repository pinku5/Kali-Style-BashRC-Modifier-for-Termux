#!/data/data/com.termux/files/usr/bin/bash

#-----------+----------+-----------+----------+------------+
# Script created by YouTube channel — XT Haks
# Follow me on Telegram --(https://t.me/+AImSk6IkZPo1ODk1)
#Instagram id ----(pinkuyadav_7) 
#-----------+-----------+----++++++++-----------+-----------+

clear
echo "=================================="
echo "      Kali Style Modifier"
echo "=================================="
echo

read -p "Enter display name: " NAME

echo
echo "[1] Red"
echo "[2] Green"
echo "[3] Blue"
echo "[4] Sky Blue"
echo "[5] Pink"
echo "[6] Yellow"
echo

read -p "Choose color: " opt

case $opt in
1) COLOR="\e[1;31m" ;;
2) COLOR="\e[1;32m" ;;
3) COLOR="\e[1;34m" ;;
4) COLOR="\e[1;36m" ;;
5) COLOR="\e[1;35m" ;;
6) COLOR="\e[1;33m" ;;
*)
echo "Invalid option!"
exit 1
;;
esac

cat > ~/.bashrc <<EOF
clear

PS1='\[$COLOR\]┌──(${NAME}㉿kali)-[\w]
└─# \[\e[0m\]'
EOF

echo
echo "Theme applied successfully!"
source ~/.bashrc
