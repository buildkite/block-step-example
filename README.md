# Buildkite Block Step Example

[![Build status](https://badge.buildkite.com/2590219e4a5ac465234b4e7b4bfc95cd0c481025d5acf6021c.svg)](https://buildkite.com/buildkite/block-step-example/builds/latest?branch=main)
[![Add to Buildkite](https://img.shields.io/badge/Add%20to%20Buildkite-14CC80)](https://buildkite.com/new)

This repository is an example [Buildkite](https://buildkite.com/) pipeline that demonstrates how to use a [Block Step](https://buildkite.com/docs/pipelines/block-step-example) to pause a build and prompt for manual input.

👉 **See this example in action:** [https://buildkite.com/buildkite/block-step-example](https://buildkite.com/buildkite/block-step-example/builds/latest?branch=main)

See the full [Getting Started Guide](https://buildkite.com/docs/guides/getting-started) for step-by-step instructions on how to get this running, or try it yourself:

[![Add to Buildkite](https://buildkite.com/button.svg)](https://buildkite.com/new)

<a href="https://buildkite.com/buildkite/block-step-example/builds/latest?branch=main">
  <img width="2400" alt="The build is paused at the first block step, prompting for release details" src=".buildkite/screenshot-1.png" />
</a>
<p align="left"><em>The build is paused at the first block step, prompting for release details</em></p>

<a href="https://buildkite.com/buildkite/block-step-example/builds/latest?branch=main">
  <img width="2400" alt="The release form with fields for name, changelog, and release type" src=".buildkite/screenshot-2.png" />
</a>
<p align="left"><em>The release form with fields for name, changelog, and release type</em></p>

<a href="https://buildkite.com/buildkite/block-step-example/builds/latest?branch=main">
  <img width="2400" alt="The pipeline resumes after the first block step, with the notify step next in the build" src=".buildkite/screenshot-3.png" />
</a>
<p align="left"><em>The pipeline resumes after the first block step, with the notify step next in the build</em></p>

<a href="https://buildkite.com/buildkite/block-step-example/builds/latest?branch=main">
  <img width="2400" alt="The notify input dialog prompting for which team should be notified" src=".buildkite/screenshot-4.png" />
</a>
<p align="left"><em>The notify input dialog prompting for which team should be notified</em></p>

<a href="https://buildkite.com/buildkite/block-step-example/builds/latest?branch=main">
  <img width="2400" alt="The pipeline completes, and the release script logs all submitted input values" src=".buildkite/screenshot-5.png" />
</a>
<p align="left"><em>The pipeline completes, and the release script logs all submitted input values</em></p>

---
<!-- docs:start -->
## How it works

This example:
- Uses a [Block Step](https://buildkite.com/docs/pipelines/block-step) with custom input fields.
- Includes a [`release.sh`](release.sh) script that reads values entered during the block step.
- Dynamically generates prompt fields using [`generate-notify-pipeline.sh`](generate-notify-pipeline.sh).

<!-- docs:end -->
---

## License

See [LICENSE](LICENSE.md) (MIT)
