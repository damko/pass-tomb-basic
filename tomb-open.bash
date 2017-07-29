#!/bin/bash

command -v tomb >/dev/null 2>&1 || { echo >&2 "I require tomb but it's not installed.  Aborting."; exit 1; }

PASS_IDENTITY="${1}"; 

TOMB_FILE="${GRAVEYARD}/pass-${PASS_IDENTITY}.tomb";
TOMB_KEY="${GRAVEYARD_KEYS}/pass-${PASS_IDENTITY}.key.tomb";

tomb open ${TOMB_FILE} ${PASS_STORE_DIR} -k ${TOMB_KEY}
