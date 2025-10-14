#map = affine_map<(d0, d1)[s0] -> (s0, d0 - d1)>
module {
  func.func @fully_dynamic_bounds(%arg0: index, %arg1: index, %arg2: index) -> i32 {
    %c0_i32 = arith.constant 0 : i32
    %0 = scf.for %arg3 = %arg0 to %arg1 step %arg2 iter_args(%arg4 = %c0_i32) -> (i32) {
      %1 = affine.min #map(%arg1, %arg3)[%arg2]
      %2 = arith.index_cast %1 : index to i32
      %3 = arith.addi %arg4, %2 : i32
      scf.yield %3 : i32
    }
    return %0 : i32
  }
}

