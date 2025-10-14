module {
  func.func @test_invalid_arg_materialization(%arg0: i16) {
    "foo.return"(%arg0) : (i16) -> ()
  }
}

