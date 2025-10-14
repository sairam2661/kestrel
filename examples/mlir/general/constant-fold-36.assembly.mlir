module {
  func.func @custom_insertion_position() {
    "test.one_region_op"() ({
      %c1_i32 = arith.constant 1 : i32
      %0 = arith.addi %c1_i32, %c1_i32 : i32
      "foo.yield"(%0) : (i32) -> ()
    }) : () -> ()
    return
  }
}

