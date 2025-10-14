module {
  func.func @while_unused_arg1(%arg0: i32, %arg1: f64) -> i32 {
    %0 = scf.while (%arg2 = %arg0, %arg3 = %arg1) : (i32, f64) -> i32 {
      %1 = "test.condition"(%arg2) : (i32) -> i1
      scf.condition(%1) %arg2 : i32
    } do {
    ^bb0(%arg2: i32):
      %1 = "test.use"(%arg2) : (i32) -> i32
      scf.yield %1, %arg1 : i32, f64
    }
    return %0 : i32
  }
}

