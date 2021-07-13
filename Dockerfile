FROM ipfs/go-ipfs:latest

USER ipfs

# Initialize 
RUN ipfs init 
# Do not allow peering with public network
RUN ipfs bootstrap rm --all
# Add bootstrap node as peer node 
RUN ipfs bootstrap add /ip4/<TODO IP>/tcp/4001/ipfs/<TODO Peer ID>
