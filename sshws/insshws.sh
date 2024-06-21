#!/bin/bash
clear
cd

# Install Script Websocket-SSH Python
wget -O /usr/local/bin/ws-dropbear https://raw.githubusercontent.com/kaccang/jamur/main/sshws/ws-dropbear
wget -O /usr/local/bin/ws-stunnel https://raw.githubusercontent.com/kaccang/jamur/main/sshws/ws-stunnel

# Izin permission
chmod +x /usr/local/bin/ws-dropbear
chmod +x /usr/local/bin/ws-stunnel

# System Dropbear Websocket-SSH Python
wget -O /etc/systemd/system/ws-dropbear.service https://raw.githubusercontent.com/kaccang/jamur/main/sshws/service-wsdropbear
chmod +x /etc/systemd/system/ws-dropbear.service

# System SSL/TLS Websocket-SSH Python
wget -O /etc/systemd/system/ws-stunnel.service https://raw.githubusercontent.com/kaccang/jamur/main/sshws/ws-stunnel.service
chmod +x /etc/systemd/system/ws-stunnel.service

# Restart service
systemctl daemon-reload


#Enable & Start & Restart ws-dropbear service
systemctl enable ws-dropbear.service
systemctl start ws-dropbear.service
systemctl restart ws-dropbear.service

#Enable & Start & Restart ws-openssh service
systemctl enable ws-stunnel.service
systemctl start ws-stunnel.service
systemctl restart ws-stunnel.service