curl -sSL https://get.docker.com | sudo bash

sudo docker swarm join --token=SWMTKN-1-2x8fmtf1aticjjv4wd7y21ebzqbagq12k4yo7lxkp4y538lyo0-bcxugirs4phrvrk8rd0qzape0 --listen-addr eth0 --advertise-addr eth0  10.196.45.166:2377

sleep 30
sudo init 6
