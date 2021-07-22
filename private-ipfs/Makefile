PROJECT=private_ipfs_swarm

all: build 

start:
	@docker-compose -p "$(PROJECT)" up

build:
	@docker-compose -p "$(PROJECT)" build --force-rm 

clean:
	@docker-compose -p "$(PROJECT)" down -v --rmi local --remove-orphans
