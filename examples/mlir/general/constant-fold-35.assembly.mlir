module {
  func.func @nested_isolated_region() {
    builtin.module {
      func.func @isolated_op() {
        %c1_i32 = arith.constant 1 : i32
        %0 = arith.addi %c1_i32, %c1_i32 : i32
        "foo.yield"(%0) : (i32) -> ()
      }
    }
    "foo.unknown_region"() ({
      %c1_i32 = arith.constant 1 : i32
      %0 = arith.addi %c1_i32, %c1_i32 : i32
      "foo.yield"(%0) : (i32) -> ()
    }) : () -> ()
    return
  }
}

