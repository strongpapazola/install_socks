sudo apt update
wget http://ppa.launchpad.net/dajhorn/dante/ubuntu/pool/main/d/dante/dante-server_1.4.1-1_amd64.deb
sudo apt-get install gdebi-core -y
sudo gdebi dante-server_1.4.1-1_amd64.deb
# /etc/danted.conf
echo "logoutput: syslog" > /etc/danted.conf
echo "user.privileged: root" >> /etc/danted.conf
echo "user.unprivileged: nobody" >> /etc/danted.conf
echo "internal: 0.0.0.0 port=1080" >> /etc/danted.conf
echo "external: eth0" >> /etc/danted.conf
echo "socksmethod: none" >> /etc/danted.conf
echo "clientmethod: none" >> /etc/danted.conf
echo "client pass {" >> /etc/danted.conf
echo "        from: 0.0.0.0/0 to: 0.0.0.0/0" >> /etc/danted.conf
echo "        log: connect disconnect error" >> /etc/danted.conf
echo "}" >> /etc/danted.conf
echo "socks pass {" >> /etc/danted.conf
echo "        from: 0.0.0.0/0 to: 0.0.0.0/0" >> /etc/danted.conf
echo "        log: connect disconnect error" >> /etc/danted.conf
echo "}" >> /etc/danted.conf
service danted restart
service danted status


