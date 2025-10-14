#map = affine_map<(d0, d1)[s0] -> (s0, d0 - d1)>
module {
  func.func @nested_loops(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index) -> i32 {
    %c0_i32 = arith.constant 0 : i32
    %0 = scf.for %arg5 = %arg0 to %arg2 step %arg4 iter_args(%arg6 = %c0_i32) -> (i32) {
      %1 = scf.for %arg7 = %arg1 to %arg3 step %arg4 iter_args(%arg8 = %arg6) -> (i32) {
        %3 = affine.min #map(%arg3, %arg7)[%arg4]
        %4 = arith.index_cast %3 : index to i32
        %5 = arith.addi %arg8, %4 : i32
        scf.yield %5 : i32
      }
      %2 = arith.addi %arg6, %1 : i32
      scf.yield %2 : i32
    }
    return %0 : i32
  }
}

