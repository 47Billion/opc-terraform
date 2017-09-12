curl -sSL https://get.docker.com | sudo bash
sudo docker swarm init --listen-addr eth0  --advertise-addr eth0
sleep 30
sudo init 6
