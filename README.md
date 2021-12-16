# liferay-compose-73
Docker compose for non clustered Liferay project (e.g: for development use only)

## Prerequisites
1. Properly install docker (tested with docker 20.10.7)
2. Properly install docker-compose (tested with docker compose 1.28.4)

## Quick Start :
1. Setup permissions on sh files
    ```console
     find ./ -name "*.sh" -exec chmod +x {} \;
    ```
2. Setup permissions on the deploy directory
    ```console
     chmod -R a+rwx liferay    
    ```
2. Start all services in scheduled order
    ```console
     start.sh
    ```

## Tips :
1. Remove all container and volumes create by **this** docker compose file 
    ```console
     sudo docker-compose rm -s -v
    ```
2. Manage your containers using portainer
    ```console
     ./liferay-compose-73/utils/portainer-start.sh
    ```
3. Extract a file from inside an existing container
    ```console   
      docker cp <containerId>:/file/path/within/container /host/path/target
     ```
4. Running docker-compose partially
    ```console   
      sudo docker-compose up -d <serviceName>
     ```
     Example to start database service only
      ```console      
      sudo docker-compose up -d mysql
     ```      
## Problems
- If the following error appears 
    ```
    ERROR: Couldn't connect to Docker daemon at http+docker://localhost - is it running?
    ```
    Use the following command to correct
    ``` 
    sudo setfacl -m user:$USER:rw /var/run/docker.sock
    ``` 
