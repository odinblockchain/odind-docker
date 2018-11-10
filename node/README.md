# odind-node

## Install
docker-compose up -d

## Connect to odind-docker
curl --user node --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getinfo", "params": [] }' -H 'content-type: text/plain;' http://odind-docker:22101/
