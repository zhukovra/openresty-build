FROM debian:10

COPY ./build.sh /tmp
RUN /bin/bash /tmp/build.sh && rm -rf /build /tmp/buid.sh && \
    apt-get autoremove && apt-get clean

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]