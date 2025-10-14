module {
  func.func @test_block_argument_not_converted() {
    "test.unsupported_block_arg_type"() ({
    ^bb0(%arg0: index):
      "test.return"(%arg0) : (index) -> ()
    }) : () -> ()
    return
  }
}

