# Deploy shadowsocks using Docker.
## Usage
```bash
# Ensure that docker have been properly installed.
git clone https://github.com/etaf/shadowsocks-docker.git

# In the cloned directory:
# configure the shaodwsocks server in shaodwsocks_confg.json
docker build -t etaf/shadowsocks ./

# Suppose your server port that customized in shadowsocks_config.json is 8838
# Make sure the firewall has opened the port
# If you use firewall:
sudo firewall-cmd --zone=public --add-port=8838/tcp --permanent
# If you use iptables:
iptables -I INPUT -p tcp --dport 8838 -j ACCEPT

# Ok, it’s time to run.
sudo docker run -d -p 8838:8838 etaf/shadowsocks

# Finished.
```

