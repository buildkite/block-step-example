# Buildkite Unblock Prompt Example

[![Add to Buildkite](https://buildkite.com/button.svg)](https://buildkite.com/new)

This repository is an example [Buildkite](https://buildkite.com/) pipeline that asks for input in a build using [Click to Unblock Steps with custom fields](https://buildkite.com/docs/agent/cli-pipeline#click-to-unblock-steps).

It includes:

* A [pipeline.yml](.buildkite/pipeline.yml) for defining a pipeline with an unblock prompt with input fields
* A [release.sh](release.sh) script for processing the values from the input fields
* A [generate-notify-pipeline.sh](generate-notify-pipeline.sh) for creating an unblock prompt from a dynamic list of items

## Screenshot

<img src="screenshot.png" alt="Screenshot of a dependent pipeline build" width="975" height="533">

## License

See [Licence.md](Licence.md) (MIT)
