#!/bin/bash
echo " Stoping Liferay server"
docker-compose stop tomcat
docker-compose logs --follow tomcat
