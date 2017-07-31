@test "script 'cassandra' should be present" {
  run which cassandra
  [ $status -eq 0 ]
}

@test "cont-init.d script 'cassandra' should be present" {
  run ls /etc/cont-init.d/cassandra
  [ $status -eq 0 ]
}