module {
  func.func @while_loop2(%arg0: f32) -> i64 {
    %0 = scf.while (%arg1 = %arg0) : (f32) -> i64 {
      %1 = "foo.shared_compute"(%arg1) : (f32) -> i64
      %2 = "foo.evaluate_condition"(%arg1, %1) : (f32, i64) -> i1
      scf.condition(%2) %1 : i64
    } do {
    ^bb0(%arg1: i64):
      %1 = "foo.payload"(%arg1) : (i64) -> f32
      scf.yield %1 : f32
    }
    return %0 : i64
  }
}

