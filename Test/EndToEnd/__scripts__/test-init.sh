#!/bin/bash
# Prepare Playwright container before testing
# Usage : ./test-init.sh

YELLOW='\033[33m'
RESET='\033[0m'
if ! ddev --version >/dev/null 2>&1; then
    printf "${YELLOW}Ddev is required for this script. Please see doc/DEVELOPER.md.${RESET}\n"
    exit 1
fi

ddev exec -s playwright yarn --cwd ./var/www/html/my-own-modules/category-code/Test/EndToEnd --force && \
ddev exec -s playwright yarn global add cross-env
