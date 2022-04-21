FROM ghcr.io/fief-dev/fief:0.12.11

WORKDIR /app

COPY release.sh /app/release.sh
COPY supervisord.conf /etc/supervisord.conf

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
