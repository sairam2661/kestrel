module {
  func.func @hoist_variant_scf_if_failure(%arg0: index, %arg1: index, %arg2: index) -> i32 {
    %c0_i32 = arith.constant 0 : i32
    %c42_i32 = arith.constant 42 : i32
    %c7 = arith.constant 7 : index
    %0 = scf.for %arg3 = %arg0 to %arg1 step %arg2 iter_args(%arg4 = %c0_i32) -> (i32) {
      %1 = arith.cmpi ult, %arg3, %c7 : index
      %2 = scf.if %1 -> (i32) {
        %4 = arith.addi %c42_i32, %c42_i32 : i32
        scf.yield %4 : i32
      } else {
        %4 = ub.poison : i32
        scf.yield %4 : i32
      }
      %3 = arith.addi %arg4, %2 : i32
      scf.yield %3 : i32
    }
    return %0 : i32
  }
}

