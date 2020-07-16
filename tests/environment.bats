#!/usr/bin/env bats

load '/usr/local/lib/bats/load.bash'

@test "Test setting DOCKER_CONFIG environment variable to temporary directory" {
  run "$PWD/hooks/environment"

  assert_output --regexp 'Setting DOCKER_CONFIG dir to \"(.+)\/([^/]+)\"'
  assert_success
}
