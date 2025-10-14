module {
  func.func @nested_isolated() -> i32 {
    %c1_i32 = arith.constant 1 : i32
    builtin.module {
      func.func @nested_func() {
        %c1_i32_0 = arith.constant 1 : i32
        "foo.yield"(%c1_i32_0) : (i32) -> ()
      }
    }
    "foo.region"() ({
      %c1_i32_0 = arith.constant 1 : i32
      "foo.yield"(%c1_i32_0) : (i32) -> ()
    }) : () -> ()
    return %c1_i32 : i32
  }
}

