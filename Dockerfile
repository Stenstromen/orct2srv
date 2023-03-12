FROM ubuntu:jammy
ENV OpenRCT2Version=0.4.3
ENV SAVEFILE=$SAVEFILE
WORKDIR /
RUN apt update && \
apt -y install \
libsdl2-2.0-0 \
wget \
libspeexdsp1 \
libvorbisfile3 \
libcurl4 \
libzip4 && \
wget https://github.com/OpenRCT2/OpenRCT2/releases/download/v${OpenRCT2Version}/OpenRCT2-${OpenRCT2Version}-linux-x86_64.tar.gz && \
tar xzf OpenRCT2-${OpenRCT2Version}-linux-x86_64.tar.gz && \
rm -f OpenRCT2-${OpenRCT2Version}-linux-x86_64.tar.gz && \
rm -rf /var/lib/apt/lists/*
COPY docker-entrypoint.sh /
RUN chmod 777 docker-entrypoint.sh
EXPOSE 11753
ENTRYPOINT ["/docker-entrypoint.sh"]