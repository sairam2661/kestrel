module {
  func.func @f(%arg0: i1) {
    %c0_i32 = arith.constant 0 : i32
    %0 = scf.if %arg0 -> (i32) {
      scf.yield %c0_i32 : i32
    } else {
      scf.yield %c0_i32 : i32
    }
    %1 = arith.addi %0, %0 : i32
    return
  }
}

