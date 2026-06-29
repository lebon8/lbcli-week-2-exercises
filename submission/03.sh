# Create a SegWit address.
# Add funds to the address.
# Return only the Address
ADDR=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "" bech32)

addfunds=$(bitcoin-cli -regtest -rpcwallet=btrustwallet generatetoaddress 102 $ADDR)

bitcoin-cli -regtest -rpcwallet=btrustwallet getaddressinfo $ADDR | jq -r '.address'