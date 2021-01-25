#!/bin/bash

MYSQL_ID=`docker ps | grep mysql | awk '{ print $1 }'`
PASSWORD=password

docker exec -it $MYSQL_ID mysql -u root -p$PASSWORD
