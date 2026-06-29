# Create a SegWit address.
# Add funds to the address.
# Return only the Address
ADDR=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "" bech32)

bitcoin-cli -regtest -rpcwallet=btrustwallet generatetoaddress 101 $ADDR 

bitcoin-cli -regtest -rpcwallet=btrustwallet getaddressinfo $ADDR | jq -r '.address'