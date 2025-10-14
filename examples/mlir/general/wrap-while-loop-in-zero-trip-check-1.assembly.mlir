module {
  func.func @wrap_while_loop_with_minimal_before_block(%arg0: i32) -> i32 {
    %c0_i32 = arith.constant 0 : i32
    %true = arith.constant true
    %c5_i32 = arith.constant 5 : i32
    %0 = scf.while (%arg1 = %c0_i32, %arg2 = %true) : (i32, i1) -> i32 {
      scf.condition(%arg2) %arg1 : i32
    } do {
    ^bb0(%arg1: i32):
      %1 = arith.addi %arg1, %c5_i32 : i32
      %2 = arith.cmpi slt, %1, %arg0 : i32
      scf.yield %1, %2 : i32, i1
    }
    return %0 : i32
  }
}

