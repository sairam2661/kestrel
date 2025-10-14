module {
  func.func @replace_block_arg_1_to_n() {
    "test.block_arg_replace"() ({
    ^bb0(%arg0: i32, %arg1: i16):
      "test.return"(%arg0) : (i32) -> ()
    }) : () -> ()
    "test.return"() : () -> ()
  }
}

