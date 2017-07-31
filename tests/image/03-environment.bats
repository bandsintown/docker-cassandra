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

@test "directory '/var/lib/cassandra/data' dir has proper permissions" {

  dir="/var/lib/cassandra/data"
  user="cassandra"
  group="cassandra"

  # Check the owner
  owner=$(stat -c %U  "${dir}")
  [ "${owner}" == "${user}" ]

  # Check the group
  group=$(stat -c %U  "${dir}")
  [ "$group" == "${group}" ]

  # Check the directory is writable
  status=$(test -w "${dir}"; echo $?)
  [ "$status" == 0 ]

}

@test "directory '/var/lib/cassandra/commitlog' dir has proper permissions" {

  dir="/var/lib/cassandra/commitlog"
  user="cassandra"
  group="cassandra"

  # Check the owner
  owner=$(stat -c %U  "${dir}")
  [ "${owner}" == "${user}" ]

  # Check the group
  group=$(stat -c %U  "${dir}")
  [ "$group" == "${group}" ]

  # Check the directory is writable
  status=$(test -w "${dir}"; echo $?)
  [ "$status" == 0 ]

}

@test "directory '/var/lib/cassandra/saved_caches' dir has proper permissions" {

  dir="/var/lib/cassandra/saved_caches"
  user="cassandra"
  group="cassandra"

  # Check the owner
  owner=$(stat -c %U  "${dir}")
  [ "${owner}" == "${user}" ]

  # Check the group
  group=$(stat -c %U  "${dir}")
  [ "$group" == "${group}" ]

  # Check the directory is writable
  status=$(test -w "${dir}"; echo $?)
  [ "$status" == 0 ]

}