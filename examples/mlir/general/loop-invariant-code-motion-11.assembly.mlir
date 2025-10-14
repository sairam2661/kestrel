module {
  func.func @hoist_scf_for_with_unknown_trip_count_unknown_step(%arg0: index, %arg1: index, %arg2: index) {
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %arg0 to %arg1 step %c1 {
      scf.for %arg4 = %arg0 to %arg1 step %arg2 {
      }
    }
    return
  }
}

