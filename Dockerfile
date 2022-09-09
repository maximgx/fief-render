FROM ghcr.io/fief-dev/fief:${FIEF_VERSION}

WORKDIR /app

COPY start.sh /app/start.sh
COPY supervisord.conf /etc/supervisord.conf

# Tweak to enable SSH access
# See: https://render.com/docs/ssh#limitations
RUN mkdir ~/.ssh

CMD ["sh", "start.sh"]
