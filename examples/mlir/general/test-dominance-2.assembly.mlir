module {
  func.func @nested_region(%arg0: index, %arg1: index, %arg2: index) {
    scf.for %arg3 = %arg0 to %arg1 step %arg2 {
    }
    return
  }
}

