
#!/bin/bash
echo " Starting Liferay server"
docker-compose start tomcat
docker-compose logs --follow tomcat
