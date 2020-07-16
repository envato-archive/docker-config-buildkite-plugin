# Docker Config Buildkite Plugin

This Buildkite plugin is a fix for the shared `DOCKER_CONFIG` issue that occurs on agents that are executing different pipelines concurrently.

This buildkite plugin is a temporary measure until https://github.com/buildkite/elastic-ci-stack-for-aws/pull/678 has been merged into master.

### Testing

Test are written using [bats](https://github.com/bats-core/bats-core) and can be found in the `tests` dir.

    $ docker-compose run --rm tests

### Configuration

No configuration options are required/avaliable