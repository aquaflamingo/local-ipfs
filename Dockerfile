FROM ipfs/go-ipfs:latest

RUN mkdir ~/my_ipfs

# # Initialize 
RUN ipfs init 
# # Do not allow peering with public network
RUN ipfs bootstrap rm --all

CMD ["daemon", "--offline"]
