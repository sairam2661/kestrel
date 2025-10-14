module {
  func.func @nested_region2(%arg0: index, %arg1: index, %arg2: index) {
    scf.for %arg3 = %arg0 to %arg1 step %arg2 {
      scf.for %arg4 = %arg0 to %arg1 step %arg2 {
        scf.for %arg5 = %arg0 to %arg1 step %arg2 {
        }
      }
    }
    return
  }
}

