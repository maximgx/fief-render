FROM ghcr.io/fief-dev/fief:0.12.11

WORKDIR /app

COPY .env /app/.env
COPY start.sh /app/start.sh
COPY supervisord.conf /etc/supervisord.conf

CMD ["sh", "start.sh"]
