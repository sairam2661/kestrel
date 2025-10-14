module {
  func.func @hoist_scf_for_with_unknown_trip_count_non_unit_constant_step(%arg0: index, %arg1: index) {
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    scf.for %arg2 = %arg0 to %arg1 step %c1 {
      scf.for %arg3 = %arg0 to %arg1 step %c2 {
      }
    }
    return
  }
}

