module {
  func.func @test_split_block() {
    "test.op_with_region"() ({
      "test.op_1"() : () -> ()
      "test.split_block_here"() : () -> ()
      "test.op_2"() : () -> ()
      "test.op_3"() : () -> ()
    }) : () -> ()
    return
  }
}

