<img align="left" width="150" height="150" src="https://odinblockchain.org/wp-content/uploads/2018/07/800px-black-circle-logo-with-text.png">

# odind-docker

[![Build Status](https://travis-ci.org/chrishasl/odind-docker.svg?branch=master)](https://travis-ci.org/chrishasl/odind-docker)
[![](https://images.microbadger.com/badges/image/odinblockchain/odind-docker.svg)](https://microbadger.com/images/odinblockchain/odind-docker)

Easily provision [odind](https://odinblockchain.org/) using [Docker](https://www.docker.com/)


## Quickstart from Docker Hub
```
docker run --rm -d ~/odin-wallet/:/root/.odin/ --name=odind-docker odinblockchain/odind-docker
```

## Docker build and run from source
```
docker build -t odind-docker .
docker run --rm -d ~/odin-wallet/:/root/.odin/ --name=odind-docker odind-docker
```
