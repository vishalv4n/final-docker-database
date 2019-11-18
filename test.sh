#!/bin/bash

if [ $(docker container ls -q --filter name=my_app_db_container ) != '' ];then
 docker container stop my_app_db_container
 docker container rm my_app_db_container
fi 
if [ $(docker image ls -q --filter reference=my_app_db) != '' ];then
docker image rm my_app_db 
fi
 docker build -t my_app_db .

 docker run -itd -p 9099:3306 --name my_app_db_container my_app_db