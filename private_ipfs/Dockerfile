FROM ipfs/go-ipfs:latest

# # Initialize 
RUN ipfs init 
# # Do not allow peering with public network
RUN ipfs bootstrap rm --all

RUN ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '["*"]'
RUN ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '["*"]'
RUN ipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods '["GET", "POST"]'
RUN ipfs config --json API.HTTPHeaders.Access-Control-Allow-Headers '["Authorization"]'
RUN ipfs config --json API.HTTPHeaders.Access-Control-Expose-Headers '["Location"]'
RUN ipfs config --json API.HTTPHeaders.Access-Control-Allow-Credentials '["true"]'

CMD ["daemon", ""]
