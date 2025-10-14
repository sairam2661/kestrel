module {
  func.func @slicing_test_3() {
    %cst = arith.constant 1.000000e+00 : f32
    %0 = "slicing-test-op"(%cst) : (f32) -> index
    scf.for %arg0 = %0 to %0 step %0 {
      %1 = "slicing-test-op"(%0, %arg0) : (index, index) -> index
    }
    return
  }
}

