curl -sSL https://get.docker.com | sudo bash

sudo docker swarm join --token=SWMTKN-1-17tazagamhaw6vjvmwp4lx8kxvf4lqugkifrkfcv9ym6xl81z6-49g4jmsk86n6mlaugwiskdqr7 --listen-addr eth0 --advertise-addr eth0  10.196.47.42:2377

sleep 30
sudo init 6
