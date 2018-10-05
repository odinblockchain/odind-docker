<img align="left" width="150" height="150" src="https://avatars0.githubusercontent.com/u/35367637?s=200&v=4">

# odind-docker

[![Build Status](https://travis-ci.org/odinblockchain/odind-docker.svg?branch=master)](https://travis-ci.org/odinblockchain/odind-docker)
[![](https://images.microbadger.com/badges/image/odinblockchain/odind-docker.svg)](https://microbadger.com/images/odinblockchain/odind-docker)
[![Docker Pulls](https://img.shields.io/docker/pulls/odinblockchain/odind-docker.svg)](https://hub.docker.com/r/odinblockchain/odind-docker/)

Easily provision [odind](https://odinblockchain.org/) using [Docker](https://www.docker.com/)


## Quickstart from Docker Hub
```
docker run --rm -d -v ~/odin-wallet/:/root/.odin/ --name=odind-docker odinblockchain/odind-docker
```

## Docker build and run from source
```
git clone https://github.com/odinblockchain/odind-docker.git && cd odind-docker
```
```
docker build -t odind-docker .
docker run --rm -d -v ~/odin-wallet/:/root/.odin/ --name=odind-docker odind-docker
```

## Staking
```
docker exec odind-docker odin-cli getnewaddress
docker exec odind-docker odin-cli encryptwallet "yoursecretpass"
```
Upon encrypting a wallet odind will stop, so will need to be restarted using the relevant docker run command
```
docker exec odind-docker odin-cli walletpassphrase "yoursecretpass" 9999999999 true
docker exec odind-docker odin-cli getstakingstatus
```

## Masternodes

Install odind via quickstart or from source, then perform the additional steps detailed at the [wiki](https://github.com/odinblockchain/wiki/wiki/odin-client--docker)
