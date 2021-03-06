# local-ipfs
Run private IPFS network in Docker

## Install Clone the repository
```bash
git clone git@github.com:aquaflamingo/ipfs-swarm
```

## Local
Runs mainnet IPFS but in `--offline` mode 
### Usage

```bash
make start-local
```

## Registry
(optional)

Start a local Docker registry via:
```bash
make start-registry
```

This will run a container called `localhost_registry` running on port 5000 which you can push your built images:

```bash
make build-local
docker tag local_ipfs localhost:5000/local_ipfs
docker push localhost:5000/local_ipfs
```

You can consume the IPFS containers in a different project


## DEPRECATED - Private
Removes mainnet bootstrap nodes and attempts to create network locally 

### Usage
Generate a `swarm.key` for your network. e.g. [ipfs_swarm_key_generator](github.com/aquaflamingo/ipfs_swarm_key_generator):

```bash
./ipfs_swarm_key_generator/bin/swarm_key_gen > private_ipfs/swarm.key
```

You will now have a `swarm.key` file present, that is used by the `docker-compose.yml` secrets.

```bash
make start-private
```

## Licence
MIT
