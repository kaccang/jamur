# install udp-custom + slowdns + OpenVPN
# (NOTE) Slowdns limit speed
# Upload : 3 Mbps
# Download : 3 Mbps

# Install udp-custom
apt update && apt install wget -y && \
wget -qO- -O udp.sh "https://raw.githubusercontent.com/givpn/AutoScriptXray/master/udp-custom/udp.sh" && \
chmod +x udp.sh && ./udp.sh

# Install slowdns
apt install wget -y
wget -q -O /usr/local/sbin/slowdns "https://raw.githubusercontent.com/givpn/AutoScriptXray/master/udp-custom/slowdns/slowdns"
chmod +x /usr/local/sbin/slowdns

# Configure slowdns to limit speed to 3 Mbps
echo "limit-speed 3m 3m" >> /etc/slowdns.conf

# Restart slowdns
systemctl restart slowdns

# Download NS Pointing image
wget -q -O /usr/local/sbin/nspointing.png "https://raw.githubusercontent.com/givpn/AutoScriptXray/master/udp-custom/slowdns/nspointing.png"
