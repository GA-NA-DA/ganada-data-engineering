docker rm -f $(docker ps -qa)
docker build --no-cache -t jupyter-notebook .
docker compose -f ./docker-compose.yml -p jupyter up -d