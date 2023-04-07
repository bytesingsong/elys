#!/usr/bin/env bash

# query params
elysd query oracle band-price-result
elysd query oracle last-band-request-id 1
elysd query oracle list-asset-info
elysd query oracle show-asset-info satoshi
elysd query oracle params
elysd query oracle list-price-feeder
elysd query oracle show-price-feeder $(elysd keys show -a alice --keyring-backend=test)
elysd query oracle list-price
elysd query oracle show-price BTC --source="binance" --timestamp=1680860921 
elysd query oracle show-price BTC --source="binance"
elysd query oracle show-price BTC
elysd query gov proposals

elysd tx oracle request-band-price
elysd tx oracle add-asset-info-proposal satoshi BTC BTC "" "" --title="title" --description="description" --deposit="10000000000000000000aelys" --from=alice --chain-id=elys --broadcast-mode=block --yes
elysd tx oracle remove-asset-info-proposal satoshi --title="title" --description="description" --deposit="10000000000000000000aelys" --from=alice --chain-id=elys --broadcast-mode=block --yes
elysd tx oracle set-asset-info satoshi BTC BTC "" "" --from=alice --chain-id=elys --broadcast-mode=block --yes
elysd tx oracle delete-asset-info satoshi --from=alice --chain-id=elys --broadcast-mode=block --yes
elysd tx oracle set-price-feeder $(elysd keys show -a alice --keyring-backend=test) true --from=alice --chain-id=elys --broadcast-mode=block --yes
elysd tx oracle delete-price-feeder $(elysd keys show -a alice --keyring-backend=test) --from=alice --chain-id=elys --broadcast-mode=block --yes
elysd tx oracle feed-price BTC 20001 binance --from=alice --chain-id=elys --broadcast-mode=block --yes
elysd tx oracle feed-price ETH 1900 binance --from=alice --chain-id=elys --broadcast-mode=block --yes

elysd tx gov vote 1 yes --from=alice --chain-id=elys --broadcast-mode=block --yes
elysd tx gov vote 2 yes --from=alice --chain-id=elys --broadcast-mode=block --yes