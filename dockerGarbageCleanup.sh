#!/bin/bash
which docker >/dev/null 2>&1
if [ $? -eq 0 ];then
echo "Cleaning up dangling docker containers"
docker rm -f $(docker ps -a -f status=exited -q)
echo "Cleaning up dangling docker volumes"
docker rm -v $(docker volume ls -f dangling=true -q)
echo "Cleaning up dangling docker images"
docker rmi -f $(docker images -f dangling=true -q)
else
echo "Docker binary is missing!"
fi
