#!/usr/bin/env bats

load '/usr/local/lib/bats/load.bash'

@test "Cleans up the docker login cache" {
  mkdir -p 'tests/tmp/.docker-login'

  export DOCKER_CONFIG='tests/tmp/.docker-login'

  run "$PWD/hooks/pre-exit"

  assert_success
  assert [ ! -e 'tests/tmp/.docker-login' ]
}
