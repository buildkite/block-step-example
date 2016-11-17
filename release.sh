#!/bin/bash

# This fetches the data that was filled out in the previous block step and
# outputs the values

set -eu

echo "--- :book: Processing release notes"

RELEASE_NOTES=$(buildkite-agent meta-data get release-notes)

echo
echo "---"
echo -e '\033[0;35m'
echo "$RELEASE_NOTES"
echo -e '\033[0m'
echo "---"
echo

./generate-notify-pipeline.sh | buildkite-agent pipeline upload 
