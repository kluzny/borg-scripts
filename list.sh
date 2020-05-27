#!/bin/sh

export BORG_RSH="$(jq -r '.remote.rsh' .secrets.json )"
export BORG_REPO="$(jq -r '.remote.repo' .secrets.json)"
export BORG_PASSPHRASE="$(jq -r '.password' .secrets.json)"

info() { printf "\n%s %s\n\n" "$( date )" "$*" >&2; }

info "Listing backups from $BORG_REPO"

borg list
