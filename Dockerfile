FROM ghcr.io/fief-dev/fief:0.15.1

WORKDIR /app

COPY .env /app/.env
COPY start.sh /app/start.sh
COPY supervisord.conf /etc/supervisord.conf

# Tweak to enable SSH access
# See: https://render.com/docs/ssh#limitations
RUN apk add --no-cache --upgrade grep && \
    mkdir ~/.ssh

CMD ["sh", "start.sh"]
