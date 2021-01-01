#!/bin/bash
while true
do	
	echo "container with exited status"
	echo $(date)
        sudo docker ps -a  | grep "Exited"
	sleep 1
	echo "######################################################"
done
