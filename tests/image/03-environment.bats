@test "environment variable 'CASSANDRA_CONFIG' is set" {
  run test -n "${CASSANDRA_CONFIG}"
  [ $status -eq 0 ]
}

@test "environment variable 'CASSANDRA_RPC_ADDRESS' is set" {
  run test -n "${CASSANDRA_RPC_ADDRESS}"
  [ $status -eq 0 ]
}

@test "environment variable 'CASSANDRA_BROADCAST_RPC_ADDRESS' is set" {
  run test -n "${CASSANDRA_BROADCAST_RPC_ADDRESS}"
  [ $status -eq 0 ]
}

@test "environment variable 'CASSANDRA_BROADCAST_ADDRESS' is set" {
  run test -n "${CASSANDRA_BROADCAST_ADDRESS}"
  [ $status -eq 0 ]
}

@test "environment variable 'CASSANDRA_LISTEN_ADDRESS' is set" {
  run test -n "${CASSANDRA_LISTEN_ADDRESS}"
  [ $status -eq 0 ]
}

@test "environment variable 'CASSANDRA_VERSION' is set" {
  run test -n "${CASSANDRA_VERSION}"
  [ $status -eq 0 ]
}
