curl -sSL https://get.docker.com | sudo bash

sudo docker swarm join --token=<Tokenkey> --listen-addr eth0 --advertise-addr eth0  <Private master ip>

sleep 30
sudo init 6
