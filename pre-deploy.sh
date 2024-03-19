#!/usr/bin/env sh

set -e

fief admin migrate
fief admin workspaces migrate
