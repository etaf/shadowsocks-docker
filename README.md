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
sudo firewall-cmd --reload
# If you use iptables:
iptables -I INPUT -p tcp --dport 8838 -j ACCEPT
sudo service iptables restart
# Ok, it’s time to run.
sudo service docker restart
sudo docker run -d -p 8838:8838 etaf/shadowsocks

#if you want this container starting on system boot, you should run container in this way:
sudo docker run --restart=always -d -p 8838:8838 etaf/shadowsocks

# To see the output of docker container:
docker logs $(docker ps -ql)

# Finished.

```

