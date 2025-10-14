#map = affine_map<(d0, d1)[s0] -> (s0, d0 - d1)>
module {
  func.func @no_peeling_front() -> i32 {
    %c0_i32 = arith.constant 0 : i32
    %c0 = arith.constant 0 : index
    %c4 = arith.constant 4 : index
    %c4_0 = arith.constant 4 : index
    %0 = scf.for %arg0 = %c0 to %c4_0 step %c4 iter_args(%arg1 = %c0_i32) -> (i32) {
      %1 = affine.min #map(%c4_0, %arg0)[%c4]
      %2 = arith.index_cast %1 : index to i32
      %3 = arith.addi %arg1, %2 : i32
      scf.yield %3 : i32
    }
    return %0 : i32
  }
}

