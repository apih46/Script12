#!/bin/bash

check_and_install() {
for cmd in "$@"; do
    if ! command -v "$cmd" &> /dev/null; then
      echo "Some file is required but not installed. Installing..."
      apt update
      apt install -y "$cmd"
    fi
  done
}

# Check for required commands
check_and_install bzip2 base64 shc

# Langkah 1: Update dan upgrade sistem
echo "ᴛʜᴀɴᴋꜱ ʏᴏᴜ ꜰᴏʀ ᴜꜱɪɴɢ ꜱᴄʀɪᴘᴛ ʙʏ ᴛ.ᴍᴇ/ʟᴜᴋᴀᴠᴘɴ"
sleep 1
echo "ᴘʀᴏꜱᴇꜱ ᴅᴇᴀᴄᴛɪᴠᴀᴛᴇ ɪᴘᴠ6"
sleep 1
echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6
sleep 1
echo "ᴘʀᴏᴄᴇꜱꜱ ᴅᴏᴡɴʟᴏᴀᴅɪɴɢ ꜰɪʟᴇ ʙᴀꜱɪᴄ"
sleep 1
apt update -y && apt upgrade -y
sleep 1
echo "ᴜᴘᴅᴀᴛᴇ & ᴜᴘɢʀᴀᴅᴇ ᴘᴀᴄᴋᴀɢᴇ ᴄᴏᴍᴘʟᴇᴛᴇ"
sleep 1
echo "ᴘʟᴇᴀꜱᴇ ᴡᴀɪᴛ..."
sleep 1
# Langkah 2: Mengunduh dan menjalankan skrip instalasi
echo "ʟᴇᴛꜱ'ɢᴏ ᴛᴏ ɪɴꜱᴛᴀʟʟɪɴɢ"
echo -e "   .----------------------------------."
echo -e "   |\e[1;32mᴘʟᴇᴀꜱᴇ ꜱᴇʟᴇᴄᴛ ɪɴꜱᴛᴀʟʟ ᴛʏᴘᴇ ʙᴇʟᴏᴡ \e[0m|"
echo -e "   '----------------------------------'"
echo -e "     \e[1;32m1)\e[0m xʀᴀʏ & ꜱꜱʜ (ʀᴇᴄᴏᴍᴍᴇɴᴅ)"
echo -e "     \e[1;32m2)\e[0m xʀᴀʏ , ꜱꜱʜ , ɴᴏᴏʙᴢᴠᴘɴ , ʜʏꜱᴛᴇʀɪᴀ"
echo -e "   ------------------------------------"
read -p "   Please select numbers 1 or 2 : " host
echo ""
if [[ $host == "1" ]]; then
wget https://raw.githubusercontent.com/apih46/Script12/main/installxrayssh.sh && chmod +x installxrayssh.sh && ./installxrayssh.sh
clear
else
wget https://raw.githubusercontent.com/apih46/Script12/main/install.sh && chmod +x install.sh && ./install.sh
fi