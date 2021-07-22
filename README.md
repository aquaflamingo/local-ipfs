# local-ipfs
Run private IPFS network in Docker

## Install
Clone the repository
```bash
git clone git@github.com:robertsimoes/ipfs-swarm
```

## Private
Removes mainnet bootstrap nodes and attempts to create network locally 

### Usage
Generate a `swarm.key` for your network. e.g. [ipfs_swarm_key_generator](github.com/robertsimoes/ipfs_swarm_key_generator):

```bash
./ipfs_swarm_key_generator/bin/swarm_key_gen > private_ipfs/swarm.key
```

You will now have a `swarm.key` file present, that is used by the `docker-compose.yml` secrets.

```bash
make start-private
```

## Local
Runs mainnet IPFS but in `--offline` mode 
### Usage

```bash
make start-local
```
