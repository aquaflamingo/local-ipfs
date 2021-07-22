FROM ipfs/go-ipfs:latest

# # Initialize 
RUN ipfs init 
# # Do not allow peering with public network
RUN ipfs bootstrap rm --all

CMD ["daemon", ""]
