#!/bin/sh

export BORG_RSH="$(jq -r '.remote.rsh' .secrets.json )"
export BORG_REPO="$(jq -r '.remote.repo' .secrets.json)"
export BORG_PASSPHRASE="$(jq -r '.password' .secrets.json)"

info() { printf "\n%s %s\n\n" "$( date )" "$*" >&2; }


info "All Archives at $BORG_REPO"
borg info
info "Listing backups at $BORG_REPO"
borg list
