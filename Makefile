LOCAL=local_ipfs
PRIVATE=private_ipfs

build-local:
	@docker-compose -p "$(LOCAL)" -f local_ipfs/docker-compose.yml build

build-private:
	@docker-compose -p "$(PRIVATE)" -f private_ipfs/docker-compose.yml build

start-private:
	@docker-compose -p "$(PRIVATE)" -f private_ipfs/docker-compose.yml up

start-local:
	@docker-compose -p "$(LOCAL)" -f local_ipfs/docker-compose.yml up

clean:
	@docker-compose -p "$(LOCAL)" down -v --rmi local --remove-orphans
	@docker-compose -p "$(PRIVATE)" down -v --rmi local --remove-orphans
