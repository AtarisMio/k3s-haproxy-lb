FROM haproxy:2.9.7-alpine

USER root

RUN apk --no-cache upgrade && \
    apk add -U --no-cache iptables ip6tables nftables iptables-legacy

COPY entry /usr/bin/

CMD ["entry"]