module {
  func.func @test_inline_block_before() {
    "test.inline_blocks_into_parent"() ({
      "test.op_1"() : () -> ()
      "test.op_2"() : () -> ()
      "test.op_3"() : () -> ()
    }) : () -> ()
    return
  }
}

