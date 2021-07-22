LOCAL=local
PRIVATE=private

build-local:
	@docker-compose -p "$(LOCAL)" -f local_ipfs/docker-compose.yml build

build-private:
	@docker-compose -p "$(PRIVATE)" -f private_ipfs/docker-compose.yml build

start-private:
	@docker-compose -p "$(PRIVATE)" -f private_ipfs/docker-compose.yml up

start-local:
	@docker-compose -p "$(LOCAL)" -f local_ipfs/docker-compose.yml up

# Start a local docker registry
start-registry:
	@docker run -d -p 5000:5000 --restart=always --name localhost_registry registry:2

clean:
	@docker-compose -p "$(LOCAL)" down -v --rmi local --remove-orphans
	@docker-compose -p "$(PRIVATE)" down -v --rmi local --remove-orphans
