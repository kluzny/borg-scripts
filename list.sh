#!/bin/sh

export BORG_RSH="$(cat .borg-rsh)"
export BORG_REPO="$(cat .borg-repo-remote)"
export BORG_PASSPHRASE="$(cat .borg-passphrase)"

info() { printf "\n%s %s\n\n" "$( date )" "$*" >&2; }

info "Listing backups from $BORG_REPO"

borg list
