#!/bin/bash
echo "Script in process updating..."
sleep 2
wget "https://raw.githubusercontent.com/apih46/Script12/main/update/backup.sh" -q -O /usr/bin/backup
wget "https://raw.githubusercontent.com/apih46/Script12/main/update/menu-set.sh" -q -O /usr/bin/menu-set
echo "Update Complete! Returning to menu"
sleep 2
rm f /usr/bin/update
menu