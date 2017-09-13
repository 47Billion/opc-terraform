#!/bin/bash
sudo docker node ls  | grep tika | awk '{print $1}' > node.txt
while IFS='' read -r line || [[ -n "$line" ]]; do
    sudo docker node rm $line
done < "node.txt"
