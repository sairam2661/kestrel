module {
  func.func @use_before_def() {
    test.graph_region {
      %0 = arith.addi %c1_i32, %c1_i32_0 : i32
      %c1_i32 = arith.constant 1 : i32
      %c1_i32_0 = arith.constant 1 : i32
      "foo.yield"(%0) : (i32) -> ()
    }
    return
  }
}

