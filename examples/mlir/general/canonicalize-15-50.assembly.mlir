module {
  func.func @while_unused_arg2(%arg0: i32) -> i32 {
    %0 = scf.while (%arg1 = %arg0) : (i32) -> i32 {
      %1 = "test.val"() : () -> i32
      %2 = "test.condition"() : () -> i1
      scf.condition(%2) %1 : i32
    } do {
    ^bb0(%arg1: i32):
      "test.use"(%arg1) : (i32) -> ()
      %1 = "test.val1"() : () -> i32
      scf.yield %1 : i32
    }
    return %0 : i32
  }
}

