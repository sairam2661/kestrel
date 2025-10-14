module {
  func.func private @make_two_results() -> (index, index)
  func.func @test_multiple_results(%arg0: i1) {
    %0:2 = call @make_two_results() : () -> (index, index)
    %1:2 = call @make_two_results() : () -> (index, index)
    %2:2 = scf.while (%arg1 = %1#0, %arg2 = %1#0) : (index, index) -> (index, index) {
      %3 = arith.cmpi slt, %arg1, %arg2 : index
      scf.condition(%3) %arg1, %arg2 : index, index
    } do {
    ^bb0(%arg1: index, %arg2: index):
      %3:2 = func.call @make_two_results() : () -> (index, index)
      scf.yield %3#1, %3#1 : index, index
    }
    return
  }
}

