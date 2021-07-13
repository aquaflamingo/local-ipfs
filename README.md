# ipfs-swarm
Run private IPFS network in Docker

## Install
Clone the repository
```bash
git clone git@github.com:robertsimoes/ipfs-swarm
```

## Usage
Generate a `swarm.key` for your network. e.g. [ipfs_swarm_key_generator](github.com/robertsimoes/ipfs_swarm_key_generator):

```bash
./ipfs_swarm_key_generator/bin/swarm_key_gen > swarm.key
```

You will now have a `swarm.key` file present, that is used by the `docker-compose.yml` secrets.

```bash
docker-compose up
```
