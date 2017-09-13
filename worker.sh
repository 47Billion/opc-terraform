#/bin/bash
sleep 5
curl -sSL https://get.docker.com | sudo bash
sleep 2

sudo docker swarm join --token=SWMTKN-1-4e0dgsdtq987a82au4kdxbgegwhwbtso5s0cxfip8ad6tx8f5p-8ewlxtjm1l44bdvahr5mgmhhw --listen-addr eth0 --advertise-addr eth0  10.196.37.42:2377

sleep 30
sudo init 6
