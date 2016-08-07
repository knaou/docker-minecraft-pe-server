FROM ubuntu
MAINTAINER Naou <monaou@gmail.com>

WORKDIR /minecraft_pe_server
RUN apt-get -y update && \
 apt-get -y install wget && \
 wget -q https://raw.githubusercontent.com/PocketMine/php-build-scripts/master/installer.sh && \
 chmod +x installer.sh && \
 ./installer.sh -r && \
 rm installer.sh && \
 apt-get -y remove wget && \
 apt-get clean

CMD ./start.sh --no-wizard

VOLUME /minecraft_pe_server
EXPOSE 19132/tcp
EXPOSE 19132/udp

