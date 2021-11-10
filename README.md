# Testing Github commit status

[![Add to Buildkite](https://buildkite.com/button.svg)](https://buildkite.com/new)

This repository is an example [Buildkite](https://buildkite.com/) pipeline that asks for input in a build using a [Block Step](https://buildkite.com/docs/pipelines/block-step).

It includes:

* A [pipeline.yml](.buildkite/pipeline.yml) for defining a pipeline with block step with with input fields
* A [release.sh](release.sh) script for processing the values from the input fields
* A [generate-notify-pipeline.sh](generate-notify-pipeline.sh) for creating block prompt fields from a dynamic list of items

## Screenshot

<img src="screenshot.png" alt="Screenshot of a block step" />

## Licenses

See [Licence.md](Licence.md) (MIT)
