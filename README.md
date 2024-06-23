# Nextcloud + elastcsearch container

# setup

### 1. make .env file

include parameter belows and save as .env .
```
NEXTCLOUD_USER=<your_nextcloud_admn_name>
NEXTCLOUD_PASSWORD=<your_nextcloud_admin_password>
```

### 2. build and start docker container
```
docker compose up -d --build
```

### 3. install fulltextsearch plugin

windows
```
000_install_fulttextsearch.bat
```

linux
```
sh 000_install_fulttextsearch.sh
```

### 4. login and modify fulltextsearch plugin

1. Use browser and Login nextcloud (usualy url http://localhost:8080).
Open Administrator setting page, and select menu of fulltextsearch.
1. pulldown search platform and choose "Elasticsearch".
1. pulldown exernal file and choose "Index path and contents".

### 5. Test and make index

Return to console.

windows
```
001_test_fulltextsearch.bat
```

linux
```
sh 001_test_fulltextsearch.sh
```

### 6. restart container

windows/linux
```
docker compose down

docker compose up -d
```

### Notice

Adjust the memory size of ES_JAVA_OPTS and mem_reservation: in the docker-compose.yml file as needed.
