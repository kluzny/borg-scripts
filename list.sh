#!/bin/sh

export BORG_REPO="$(jq -r '.local.repo' .secrets.json)"
export BORG_PASSPHRASE="$(jq -r '.password' .secrets.json)"

info() { printf "\n%s %s\n\n" "$( date )" "$*" >&2; }

info "All Archives at $BORG_REPO"
borg info
info "Listing backups at $BORG_REPO"
borg list
