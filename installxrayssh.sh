#!/bin/bash

# ===========================

clear
#rm -fr /etc/resolv.conf
echo "nameserver 1.1.1.1
nameserver 1.0.0.1
nameserver 8.8.8.8
nameserver 8.4.8.4
" >> /etc/resolv.conf

  # // Exporint IP AddressInformation
export IP=$( curl -sS icanhazip.com )

# // Clear Data
clear
clear && clear && clear
clear;clear;clear

# set time to Malaysia
ln -fs /usr/share/zoneinfo/Asia/Kuala_Lumpur /etc/localtime

link="https://raw.githubusercontent.com/apih46/Script12/main"
# [ Warna ]
red='\e[1;31m'
green='\e[0;32m'
cyan='\e[0;36m'
white='\e[037;1m'
grey='\e[1;36m'
NC='\e[0m'

# // Melakukan Update Dan Upgrade Data Server
apt update -y
apt upgrade -y
apt install binutils -y
apt install socat -y
apt install ruby -y
gem install lolcat
apt install wget curl -y
#apt install vnstat -y
apt install htop -y
apt install speedtest-cli -y
apt install cron -y
apt install figlet -y
apt install zip unzip -y
clear

# // Menginstall RC MOD
apt install neofetch -y
apt install fonts-powerline -y
sleep 3
cd /root
sleep 1
rm -rf /root/.bashrc
sleep 2
wget "https://raw.githubusercontent.com/xhidrolix/bashrc/main/bashrc.zip"
unzip bashrc.zip ; rm -rf bashrc.zip
chmod 644 /root/.bashrc

# // Melakukan Pembuatan Directory
clear
mkdir -p /funny
sleep 1
mkdir -p /rere
sleep 1
mkdir -p /etc/slowdns
sleep 1
mkdir -p /etc/xray
sleep 1
mkdir -p /etc/websocket
sleep 1
mkdir -p /etc/xray
sleep 1
mkdir -p /etc/funny
sleep 1
mkdir -p /etc/funnt/limit
sleep 1
mkdir -p /etc/funny/limit/xray
sleep 1
mkdir -p /etc/funny/limit/xray/ip
sleep 1
mkdir -p /etc/funny/limit/xray/quota
sleep 1
mkdir -p /etc/funny/limit/ssh
sleep 1
mkdir -p /etc/funny/limit/ssh/ip
sleep 1
mkdir -p /etc/v2ray
sleep 1
mkdir -p /var
mkdir -p /var/lib
mkdir -p /var/lib/crot
chmod /var/lib/crot/*
mkdir -p /var/log
mkdir -p /var/log/xray
touch /var/log/xray/access.log
touch /var/log/xray/error.log
touch /var/log/xray/error1.log
touch /var/log/xray/akses.log
touch /var/log/xray/access1.log
touch /var/log/xray/access2.log
touch /var/log/xray/access3.log
touch /var/log/xray/access4.log
touch /var/log/xray/access5.log
touch /var/log/xray/access6.log
touch /etc/funny/.l2tp
touch /etc/funny/.sstp
touch /etc/funny/.pptp
touch /etc/funny/.ptp
touch /etc/funny/.wireguard
touch /etc/funny/.socks5
chmod +x /var/log/xray/*
touch /etc/funny/limit/ssh/ip/syslog
touch /etc/funny/limit/ssh/ip/rere
echo "9999999" >> /etc/funny/limit/ssh/ip/syslog
echo "9999999" >> /etc/funny/limit/ssh/ip/rere
mkdir -p /etc/noobzvpns
clear

# // Meminta Konfigurasi
read -p "Input Your Domain: " domain
echo "${domain}" > /etc/xray/domain
clear

# // Membuat Layanan Selalu Berjalan
echo "0 8 * * * root /usr/bin/xp
0 2 * * * root backup
0 5 * * * root reboot
0 4 1 * * root logcleaner
#*/5 * * * * root limit" >> /etc/crontab
systemctl daemon-reload
systemctl restart cron

# // Menginstall Dropbear
apt install dropbear -y
rm /etc/default/dropbear
rm /etc/issue.net
wget -O /etc/issue.net "https://raw.githubusercontent.com/apih46/Script12/main/system/issue.net"
wget -O /etc/default/dropbear "https://raw.githubusercontent.com/apih46/Script12/main/system/dropbear"
echo "/bin/false" >> /etc/shells
echo "/usr/sbin/nologin" >> /etc/shells
dd=$(ps aux | grep dropbear | awk '{print $2}')
kill $dd
systemctl daemon-reload
/etc/init.d/dropbear restart

# // Menghapus Apache2
apt autoclean -y
apt -y remove --purge unscd
apt-get -y --purge remove samba*;
apt-get -y --purge remove apache2*;
apt-get -y --purge remove bind9*;
apt-get -y remove sendmail*
apt autoremove -y
systemctl stop apache2
systemctl disable apache2
apt remove --purge apache2 -y
apt-get autoremove -y
apt-get autoclean -y
clear

# // Melakukan Renew Certificate
apt install certbot -y
sudo lsof -t -i tcp:80 -s tcp:listen | sudo xargs kill
clear
#echo "start"
#cd /root/
#clear
#echo "starting...., Port 80 Akan di Hentikan Saat Proses install Cert"
#certbot certonly --standalone --preferred-challenges http --agree-tos --email uut.mu.ak@gmail.com -d $domain
#cp /etc/letsencrypt/live/$domain/fullchain.pem /etc/xray/xray.crt
#cp /etc/letsencrypt/live/$domain/privkey.pem /etc/xray/xray.key
#chmod 644 /etc/xray/xray.key
#chmod 644 /etc/xray/xray.crt
#rm -fr /etc/xray/xray.*
clear
systemctl stop nginx
mkdir /root/.acme.sh
curl https://acme-install.netlify.app/acme.sh -o /root/.acme.sh/acme.sh
chmod +x /root/.acme.sh/acme.sh
/root/.acme.sh/acme.sh --upgrade --auto-upgrade
/root/.acme.sh/acme.sh --set-default-ca --server letsencrypt
/root/.acme.sh/acme.sh --issue -d $domain --standalone -k ec-256
~/.acme.sh/acme.sh --installcert -d $domain --fullchainpath /etc/xray/xray.crt --keypath /etc/xray/xray.key --ecc

# // Menginstall Nginx
clear
chmod 644 /etc/xray/*
apt -y install nginx
rm /etc/nginx/sites-enabled/default
rm /etc/nginx/sites-available/default
cd /etc/nginx
rm -fr conf.d
rm -fr nginx.conf
wget -O nginx.conf "https://raw.githubusercontent.com/apih46/Script12/main/system/m.conf"
cd
clear

# Menginstall VNSTAT
apt -y install vnstat > /dev/null 2>&1
/etc/init.d/vnstat restart
apt -y install libsqlite3-dev > /dev/null 2>&1
wget https://humdi.net/vnstat/vnstat-2.6.tar.gz
tar zxvf vnstat-2.6.tar.gz
cd vnstat-2.6
./configure --prefix=/usr --sysconfdir=/etc && make && make install
cd
vnstat -u -i $NET
sed -i 's/Interface "'""eth0""'"/Interface "'""$NET""'"/g' /etc/vnstat.conf
chown vnstat:vnstat /var/lib/vnstat -R
systemctl enable vnstat
/etc/init.d/vnstat restart
/etc/init.d/vnstat status
rm -f /root/vnstat-2.6.tar.gz
rm -rf /root/vnstat-2.6
clear

# Menginstall Plugin
wget https://github.com/praiman99/Plugin-FN/raw/Beginner/plugin.sh ; chmod 777 plugin.sh ; ./plugin.sh ; rm -fr plugin.sh

# // Membuat Konfigurasi NoobZVPNS
cat > /etc/noobzvpns/config.json <<-JSON
{
	"tcp_std": [
		8080
	],
	"tcp_ssl": [
		9443
	],
	"ssl_cert": "/etc/noobzvpns/cert.pem",
	"ssl_key": "/etc/noobzvpns/key.pem",
	"ssl_version": "AUTO",
	"conn_timeout": 60,
	"dns_resolver": "/etc/resolv.conf",
	"http_ok": "HTTP/1.1 101 Switching Protocols[crlf]Upgrade: websocket[crlf][crlf]"
}
JSON

# // Membuat Service
cat> /etc/systemd/system/xray.service << END
[Unit]
Description=Xray by lukaVPN
Documentation=https://indo-ssh.com
After=network.target nss-lookup.target

[Service]
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/bin/xray -config /etc/xray/config.json
Restart=on-failure
RestartPreventExitStatus=23

[Install]
WantedBy=multi-user.target
END

# // Membuat service Lainya
cat> /etc/systemd/system/limit.service << END
[Unit]
Description=Limit All Service By lukaVPN
Documentation=https://t.me/lukaVPN
After=syslog.target network-online.target

[Service]
User=root
NoNewPrivileges=true
ExecStart=/usr/bin/loop

[Install]
WantedBy=multi-user.target
END

cat> /etc/systemd/system/badvpn.service << END
[Unit]
Description=BadVPN Gaming Support Port 7300 By LukaVPN
Documentation=https://t.me/lukavpn
After=syslog.target network-online.target

[Service]
User=root
NoNewPrivileges=true
ExecStart=/usr/bin/badvpn --listen-addr 127.0.0.1:7300 --max-clients 500
Restart=on-failure
RestartPreventExitStatus=23
LimitNPROC=10000
LimitNOFILE=1000000

[Install]
WantedBy=multi-user.target
END

cat> /etc/systemd/system/edu.service << END
[Unit]
Description=WebSocket All OS By LukaVPN
Documentation=https://github.com/Rerechan-Team
After=syslog.target network-online.target

[Service]
User=root
NoNewPrivileges=true
ExecStart=/usr/bin/ws -f /usr/bin/config.yaml
Restart=on-failure
RestartPreventExitStatus=23
LimitNPROC=10000
LimitNOFILE=1000000

[Install]
WantedBy=multi-user.target
END

# // Menginstall UDP
clear

# [ Mengecek Alur Network Server ]
ip_nat=$(ip -4 addr | grep inet | grep -vE '127(\.[0-9]{1,3}){3}' | cut -d '/' -f 1 | grep -oE '[0-9]{1,3}(\.[0-9]{1,3}){3}' | sed -n 1p)
interface=$(ip -4 addr | grep inet | grep -vE '127(\.[0-9]{1,3}){3}' | grep "$ip_nat" | awk {'print $NF'})
public_ip=$(curl 2ip.io)

# [ Mengambil File UDP Request ]
wget "https://raw.githubusercontent.com/apih46/Script12/main/system/bin-urqst" -O /usr/bin/udp-request &>/dev/null
chmod +x /usr/bin/udp-request

# [ Membuat Konfigurasi ]
mkdir /etc/req
cat <<EN >/etc/req/config.json
{
  "listen": ":36711",
  "stream_buffer": 33554432,
  "receive_buffer": 83886080,
  "auth": {
    "mode": "passwords"
  }
}
EN
chmod +x /etc/req/*

# [ Membuat Service ]
cat <<EOF >/etc/systemd/system/udp-request.service
[Unit]
Description=UDP Request By LukaVPN
After=network.target

[Service]
Type=simple
User=root
WorkingDirectory=/etc/req
ExecStart=/usr/bin/udp-request -ip=$public_ip -net=$interface -exclude=80 -mode=system
Restart=always
RestartSec=3s

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload &>/dev/null
systemctl enable udp-request &>/dev/null
systemctl start udp-request &>/dev/null

# [ Menginstall UDP Custom ]
wget "$link/system/udp.sh" && chmod +x udp.sh && ./udp.sh
clear

# // Mengambil File
cd /usr/bin
wget "$link/system/mesinssh"
wget -O m.zip "${link}/menu.zip"
7z x m.zip ; rm -fr m.zip ; chmod +x *
clear
cd /etc/xray
wget -O m.zip "${link}/system/json.zip"
unzip m.zip ; rm -fr m.zip ; chmod +x *
clear

# // Mengizinkan Service
systemctl enable xray
systemctl enable nginx
systemctl enable edu
systemctl enable badvpn
systemctl enable limit
systemctl enable cron

# // Menjalankan Service
systemctl restart xray
systemctl restart nginx
systemctl restart edu
systemctl restart limit
systemctl restart badvpn
systemctl restart cron
clear

TIMES="10"
CHATID="1279120579"
KEY="5895091122:AAHIDv0j9R2BKX6UWaEsGyTvKBnXAzosKBk"
URL="https://api.telegram.org/bot$KEY/sendMessage"
domain=$(cat /etc/xray/domain)
IP=$(curl -sS ipv4.icanhazip.com)
    TEXT="
<code>────────────────────</code>
<b>⚡𝗡𝗢𝗧𝗜𝗙 𝗜𝗡𝗦𝗧𝗔𝗟𝗟 𝗦𝗖𝗥𝗜𝗣𝗧⚡</b>
<code>────────────────────</code>
<code>IP User     :</code><code>$IP</code>
<code>Domain     :</code><code>$domain</code>
<i>Script Version 2.0 Beta Edition</i>"

curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
clear 

# // Menghapus File Installasi
cd
rm -fr *
rm -fr bash_history
echo "clear" >> .profile
echo "menu" >> .profile

# Edit file /etc/systemd/system/rc-local.service for bot telegram
cat > /etc/systemd/system/rc-local.service <<-END
[Unit]
Description=/etc/rc.local
ConditionPathExists=/etc/rc.local
[Service]
Type=forking
ExecStart=/etc/rc.local start
TimeoutSec=0
StandardOutput=tty
RemainAfterExit=yes
SysVStartPriority=99
[Install]
WantedBy=multi-user.target
END

# nano /etc/rc.local
cat > /etc/rc.local <<-END
#!/bin/sh -e
# rc.local
# By default this script does nothing.
exit 0
END

# Ubah izin akses
chmod +x /etc/rc.local

# enable rc local
systemctl enable rc-local
systemctl start rc-local.service 

# // Telah Selesai
clear
echo -e "INSTALLATION HAS BEEN COMPLETED"
sleep 5
reboot
