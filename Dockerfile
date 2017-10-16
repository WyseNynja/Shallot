FROM bwstitt/alpine:3.6

RUN docker-install \
    build-base \
    openssl-dev

COPY . /app

RUN set -eux; \
    \
    cd /app; \
    ./configure; \
    make; \
    make install

ENTRYPOINT ["/usr/bin/shallot"]
