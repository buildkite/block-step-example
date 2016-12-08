#!/bin/bash

# This fetches the data that was filled out in the previous block
# step and outputs the values

set -eu

RELEASE_NAME=$(buildkite-agent meta-data get release-name)
RELEASE_TYPE=$(buildkite-agent meta-data get release-type)

# The `release-notes` field is optional (required: false)
# so we'll default it to "n/a" if a value doesn't exist
RELEASE_NOTES=$(buildkite-agent meta-data get release-notes || echo "n/a")

echo "+++ :book: Processing release notes"

echo
echo "---"
echo -e '\033[0;35m'
echo "$RELEASE_NAME"
echo
echo "$RELEASE_NOTES"
echo -e '\033[0m'
echo "---"
echo

echo "+++ :boom: Bumping $RELEASE_TYPE version"

echo "✅"

echo "--- :pipeline: Uploading notify pipeline"

./generate-notify-pipeline.sh | buildkite-agent pipeline upload 
