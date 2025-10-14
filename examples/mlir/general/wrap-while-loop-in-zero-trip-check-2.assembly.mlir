module {
  func.func @wrap_do_while_loop_in_zero_trip_check(%arg0: i32) -> i32 {
    %c0_i32 = arith.constant 0 : i32
    %c5_i32 = arith.constant 5 : i32
    %0 = scf.while (%arg1 = %c0_i32) : (i32) -> i32 {
      %1 = arith.addi %arg1, %c5_i32 : i32
      %2 = arith.cmpi slt, %1, %arg0 : i32
      scf.condition(%2) %1 : i32
    } do {
    ^bb0(%arg1: i32):
      scf.yield %arg1 : i32
    }
    return %0 : i32
  }
}

