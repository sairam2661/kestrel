#map = affine_map<(d0, d1)[s0] -> (s0, d0 - d1)>
module {
  func.func @two_iteration_example() -> i32 {
    %c0_i32 = arith.constant 0 : i32
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %0 = scf.for %arg0 = %c2 to %c8 step %c4 iter_args(%arg1 = %c0_i32) -> (i32) {
      %1 = affine.min #map(%c8, %arg0)[%c4]
      %2 = arith.index_cast %1 : index to i32
      %3 = arith.addi %arg1, %2 : i32
      scf.yield %3 : i32
    }
    return %0 : i32
  }
}

