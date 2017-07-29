#!/bin/bash

command -v tomb >/dev/null 2>&1 || { echo >&2 "I require tomb but it's not installed.  Aborting."; exit 1; }

tomb list | grep "pass-"

