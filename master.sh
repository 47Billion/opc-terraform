#!/bin/bash
sleep 5
curl -sSL https://get.docker.com | sudo bash
sleep 2
sudo docker swarm init --listen-addr eth0  --advertise-addr eth0
sleep 30
sudo init 6
