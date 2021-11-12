
#!/bin/bash
echo " Starting Postgresql server"
docker-compose up -d postgresql
sleep 3s
echo " Done."

echo " Starting ElasticSearch server"
docker-compose up -d elasticsearch
sleep 3s
echo " Done."

echo " Starting Kibana server"
docker-compose up -d kibana
sleep 3s
echo " Done."

echo " Waiting for readiness of dependent servers ..."
./utils/spinner.sh sleep 5m

echo " Starting Liferay server"
docker-compose up -d tomcat
docker-compose logs --follow tomcat
