FROM ghcr.io/fief-dev/fief:latest

WORKDIR /app

COPY pre-deploy.sh /app/pre-deploy.sh
COPY supervisord.conf /etc/supervisord.conf

# Tweak to enable SSH access
# See: https://render.com/docs/ssh#limitations
RUN mkdir ~/.ssh
