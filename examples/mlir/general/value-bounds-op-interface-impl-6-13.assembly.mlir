module {
  func.func @compare_scf_for(%arg0: index, %arg1: index, %arg2: index) {
    scf.for %arg3 = %arg0 to %arg1 step %arg2 {
      "test.compare"(%arg3, %arg0) <{cmp = "GE"}> : (index, index) -> ()
      "test.compare"(%arg3, %arg1) <{cmp = "LT"}> : (index, index) -> ()
    }
    return
  }
}

