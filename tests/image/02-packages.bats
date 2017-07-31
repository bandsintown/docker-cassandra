@test "package 'java' should be present" {
  run which java
  [ $status -eq 0 ]
}

@test "package 'consul' should be present" {
  run which consul
  [ $status -eq 0 ]
}

@test "package 'consul-template' should be present" {
  run which consul-template
  [ $status -eq 0 ]
}

@test "package 'gosu' should be present" {
  run which gosu
  [ $status -eq 0 ]
}

@test "package 'gosu' should have proper permissions" {
  result=$(stat -c "%a" $(which gosu))
  [ $result -eq 755 ]
}