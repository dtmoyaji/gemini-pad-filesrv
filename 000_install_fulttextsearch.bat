docker exec gemini-pad-filesrv-nc-1 apt update && apt install -y
docker exec gemini-pad-filesrv-nc-1 apt install -y sudo

docker exec gemini-pad-filesrv-nc-1 sh /opt/gpfsrv/fulltextsearch_setup.sh
