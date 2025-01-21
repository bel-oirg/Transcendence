all :  build up

build:
	docker-compose -f compose.yml build
up :
	docker-compose -f compose.yml up -d
down :
	docker-compose -f compose.yml down

re: fclean all

fclean: down
	@docker stop $(shell docker ps -qa) 2>/dev/null || true
	@docker rm $(shell docker ps -qa) 2>/dev/null || true
	@docker rmi -f $(shell docker images -qa) 2>/dev/null || true
	@docker volume rm $(shell docker volume ls -q) 2>/dev/null || true
	@docker network rm $(shell docker network ls -q | grep -v "bridge\|host\|none") 2>/dev/null || true