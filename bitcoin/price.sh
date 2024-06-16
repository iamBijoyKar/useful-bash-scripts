#!/bin/bash

# Arguments
FLAG=$1


INFO=$(curl -s "https://api.coindesk.com/v1/bpi/currentprice.json" | jq -C)
USD_PRICE=$(echo $INFO | jq -r '.bpi.USD.rate')

echo "The current price of Bitcoin is $USD_PRICE USD"
