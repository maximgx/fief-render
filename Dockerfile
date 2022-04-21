FROM ghcr.io/fief-dev/fief:0.12.11

WORKDIR /app

COPY .env /app/.env
COPY release.sh /app/release.sh
COPY supervisord.conf /etc/supervisord.conf

CMD ["sh", "start.sh"]
