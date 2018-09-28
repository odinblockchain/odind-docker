# Download base image ubuntu 16.04
FROM ubuntu:16.04

LABEL maintainer="ODIN Docker Maintainers"

# Update Ubuntu Software repository
RUN apt-get update
RUN apt-get dist-upgrade -y

# Install packages
RUN apt-get install -y build-essential software-properties-common libtool \
	autotools-dev pkg-config libssl-dev libboost-all-dev \
	libminiupnpc-dev autoconf automake libevent-dev git

# Extra Repo & packages
RUN add-apt-repository -y ppa:bitcoin/bitcoin \
	&& apt-get update \
	&& apt-get install -y libdb4.8-dev libdb4.8++-dev


# Clone git repo and compile
RUN git clone https://github.com/odinblockchain/Odin.git \
	&& cd Odin \
	&& ./autogen.sh \
	&& ./configure \
	&& make \
	&& make install

CMD ["sh","-c","odind"]
EXPOSE 22100 22101
