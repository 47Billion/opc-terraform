#!/bin/bash
sudo docker node ls  | grep wfs-master | awk '{print $1}' >  wfs-master.txt
while IFS='' read -r line || [[ -n "$line" ]]; do
    sudo docker node update --label-add  wfs-master=1 $line
done < " wfs-master.txt"

sudo docker node ls  | grep wfs-volume | awk '{print $1}' > wfs-volume.txt
while IFS='' read -r line || [[ -n "$line" ]]; do
    sudo docker node update --label-add wfs-volume=1 $line
done < "wfs-volume.txt"

sudo docker node ls  | grep mariadb | awk '{print $1}' > mariadb.txt
while IFS='' read -r line || [[ -n "$line" ]]; do
    sudo docker node update --label-add mariadb=1 $line
done < "mariadb.txt"

sudo docker node ls  | grep redis | awk '{print $1}' > redis.txt
while IFS='' read -r line || [[ -n "$line" ]]; do
    sudo docker node update --label-add redis=1 $line
done < "redis.txt"

sudo docker node ls  | grep es | awk '{print $1}' > es.txt
while IFS='' read -r line || [[ -n "$line" ]]; do
    sudo docker node update --label-add es=1 $line
done < "es.txt"

sudo docker node ls  | grep files-server | awk '{print $1}' > files-server.txt
while IFS='' read -r line || [[ -n "$line" ]]; do
    sudo docker node update --label-add files-server=1 $line
done < "files-server.txt"

sudo docker node ls  | grep tika | awk '{print $1}' > tika.txt
while IFS='' read -r line || [[ -n "$line" ]]; do
    sudo docker node update --label-add tika=1 $line
done < "tika.txt"

sudo docker node ls  | grep process | awk '{print $1}' > process.txt
while IFS='' read -r line || [[ -n "$line" ]]; do
    sudo docker node update --label-add process=1 $line
done < "process.txt"

sudo docker node ls  | grep explode | awk '{print $1}' > explode.txt
while IFS='' read -r line || [[ -n "$line" ]]; do
    sudo docker node update --label-add explode=1 $line
done < "explode.txt"

sudo docker node ls  | grep ocr-pdf | awk '{print $1}' > ocr-pdf.txt
while IFS='' read -r line || [[ -n "$line" ]]; do
    sudo docker node update --label-add ocr-pdf=1 $line
done < "ocr-pdf.txt"


