#!/bin/bash

command -v tomb >/dev/null 2>&1 || { echo "I require tomb but it's not installed. Aborting."; exit 1; }

PASS_IDENTITY="${1}"; 

if [ ! "${PASS_IDENTITY}" ]; then
	echo "Missing <identity_name>. Aborting."
	echo
	echo "Usage: ${0} tomb-close <identity_name>"
	exit 1
fi
tomb close pass-${PASS_IDENTITY}
tomb list
