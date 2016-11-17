#!/bin/bash

# This fetches the data that was filled out in the notify block step

set -eu

TEAM=$(buildkite-agent meta-data get notify-team)

echo "--- :phone: Calling the $TEAM team"

echo "✅"
