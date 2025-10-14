module {
  func.func @hoist_from_scf_while(%arg0: i32, %arg1: i32) -> i32 {
    %0 = scf.while (%arg2 = %arg1) : (i32) -> i32 {
      %c2_i32 = arith.constant 2 : i32
      %c10_i32 = arith.constant 10 : i32
      %1 = arith.addi %arg0, %c2_i32 : i32
      %2 = arith.cmpi slt, %arg2, %1 : i32
      scf.condition(%2) %arg2 : i32
    } do {
    ^bb0(%arg2: i32):
      %c1_i32 = arith.constant 1 : i32
      %1 = arith.addi %c1_i32, %arg2 : i32
      scf.yield %1 : i32
    }
    return %0 : i32
  }
}

