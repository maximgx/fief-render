FROM ghcr.io/fief-dev/fief:0.12.11

WORKDIR /app

COPY release.sh /app/release.sh
COPY supervisord.conf /etc/supervisord.conf

# Run the release command in build until Render supports lifecycle hooks
# See: https://community.render.com/t/release-command-for-db-migrations/247
RUN /app/release.sh

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
