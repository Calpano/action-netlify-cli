#!/bin/bash

echo "Running Netlify CLI command..."
echo "> npx netlify-cli $*"

set -o pipefail
OUTPUT=$(bash -c "npx netlify-cli $*" | tr '\n' ' ') || exit $?
set +o pipefail

NETLIFY_OUTPUT=$(echo "$OUTPUT")

echo "NETLIFY_OUTPUT=$NETLIFY_OUTPUT" >> $GITHUB_OUTPUT
