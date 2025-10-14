module {
  func.func @int32_scalar(%arg0: i32, %arg1: i32) {
    %0 = arith.addi %arg0, %arg1 : i32
    %1 = arith.subi %arg0, %arg1 : i32
    %2 = arith.muli %arg0, %arg1 : i32
    %3 = arith.divsi %arg0, %arg1 : i32
    %4 = arith.divui %arg0, %arg1 : i32
    %5 = arith.remui %arg0, %arg1 : i32
    return
  }
  func.func @int32_scalar_srem(%arg0: i32, %arg1: i32) {
    %0 = arith.remsi %arg0, %arg1 : i32
    return
  }
}

