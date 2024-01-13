#!/bin/bash



if sudo docker ps -a --format '{{.Names}}' | grep -q '^flask-api-app$'; then
   
    sudo docker stop flask-api-app &> /dev/null
    sudo docker rm flask-api-app &> /dev/null
fi

# Check if image exists
if sudo docker images --format '{{.Repository}}:{{.Tag}}' | grep -q '^flask-api-app:latest$'; then
    
    sudo docker rmi flask-api-app:latest &> /dev/null
fi


exit 0
