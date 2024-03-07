.PHONY: run-jupyter

run-jupyter:
	@CONTAINERS=$$(docker ps -q) && \
    if [ -n "$$CONTAINERS" ]; then \
        docker rm -f $$CONTAINERS; \
    fi
	docker build --no-cache -t jupyter-notebook .
	docker compose -f ./docker-compose.yml -p jupyter up -d
