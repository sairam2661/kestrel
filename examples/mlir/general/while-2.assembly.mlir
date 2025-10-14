module {
  func.func @while_loop_before_typeconv(%arg0: index) -> i64 {
    %0 = scf.while (%arg1 = %arg0) : (index) -> i64 {
      %1 = "foo.shared_compute"(%arg1) : (index) -> i64
      %2 = "foo.evaluate_condition"(%arg1, %1) : (index, i64) -> i1
      scf.condition(%2) %1 : i64
    } do {
    ^bb0(%arg1: i64):
      %1 = "foo.payload"(%arg1) : (i64) -> index
      scf.yield %1 : index
    }
    return %0 : i64
  }
}

