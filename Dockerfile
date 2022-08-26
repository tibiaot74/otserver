FROM debian:8
WORKDIR server
RUN apt-get update && apt install apt-utils subversion autoconf build-essential pkg-config libboost-dev \
    libgmp3-dev libxml2-dev liblua5.1-0-dev libmysqlclient-dev ccache libboost-filesystem-dev \
    libboost-regex-dev libboost-system-dev libboost-thread-dev screen libssl-dev libcrypto++-dev \
    git cmake libluajit-5.1-dev libboost-iostreams-dev libpugixml-dev liblua5.2-dev \
    libboost-date-time-dev -y
COPY server /server
WORKDIR /server/sources
RUN chmod +x autogen.sh && ./autogen.sh && \
    chmod +x ./configure && ./configure --enable-server-diag --enable-mysql --enable-root-permission && \
    make -j $(nproc)
RUN chmod +x theotxserver && mv theotxserver ../
WORKDIR /server
EXPOSE 7171 7172
CMD ./theotxserver
