FROM tibiaot74/debian:latest
WORKDIR server
COPY server /server
WORKDIR /server/sources
RUN chmod +x autogen.sh && ./autogen.sh && \
    chmod +x ./configure && ./configure --enable-server-diag --enable-mysql --enable-root-permission && \
    make -j $(nproc)
RUN chmod +x theotxserver && mv theotxserver ../
WORKDIR /server
EXPOSE 7171 7172
CMD ./theotxserver
