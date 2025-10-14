module {
  func.func @test_valid_arg_materialization(%arg0: i64) {
    "foo.return"(%arg0) : (i64) -> ()
  }
}

