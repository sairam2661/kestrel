module {
  func.func @arith_bitwise(%arg0: i32, %arg1: i32) {
    %0 = arith.andi %arg0, %arg1 : i32
    %1 = arith.ori %arg0, %arg1 : i32
    %2 = arith.xori %arg0, %arg1 : i32
    return
  }
}

