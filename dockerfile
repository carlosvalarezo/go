FROM ubuntu:18.10
WORKDIR /gopass
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y wget
RUN wget https://dl.google.com/go/go1.12.2.linux-amd64.tar.gz
RUN tar -xvf go1.12.2.linux-amd64.tar.gz 
RUN mv go /usr/local
ENV GOROOT=/usr/local/go
ENV PATH=$GOROOT/bin:$PATH
RUN apt-get install -y gnupg git rng-tools
#ENTRYPOINT ["go", "version"]

