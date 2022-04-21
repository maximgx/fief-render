#!/usr/bin/env sh

set -e

# Run the release command in build until Render supports lifecycle hooks
# See: https://community.render.com/t/release-command-for-db-migrations/247
fief migrate-main
fief migrate-workspaces

/usr/bin/supervisord -c /etc/supervisord.conf
