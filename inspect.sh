#!/usr/bin/env bash

export BORG_REPO="$(jq -r '.local.repo' .secrets.json)"
export BORG_PASSPHRASE="$(jq -r '.password' .secrets.json)"

if [[ -z "$BORG_ARCHIVE"  ]]; then
  echo "Must provide BORG_ARCHIVE (looks like hostname-timestamp)" 1>&2
  exit 1
fi

borg info "$BORG_REPO::$BORG_ARCHIVE"
