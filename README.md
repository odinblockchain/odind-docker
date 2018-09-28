<img align="left" width="150" height="150" src="https://odinblockchain.org/wp-content/uploads/2018/07/800px-black-circle-logo-with-text.png">

# odind-docker

[![Build Status](https://travis-ci.org/chrishasl/odind-docker.svg?branch=master)](https://travis-ci.org/chrishasl/odind-docker)
[![](https://images.microbadger.com/badges/image/odinblockchain/odind-docker.svg)](https://microbadger.com/images/odinblockchain/odind-docker)
[![Docker Pulls](https://img.shields.io/docker/pulls/odinblockchain/odind-docker.svg)](https://hub.docker.com/r/odinblockchain/odind-docker/)


Easily provision [odind](https://odinblockchain.org/) using [Docker](https://www.docker.com/)




## Docker build and run
```
docker build -t odind-docker .
docker run --rm -d --name=odind-docker odind-docker
```
