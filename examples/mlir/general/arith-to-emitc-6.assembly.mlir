module {
  func.func @arith_bitwise_bool(%arg0: i1, %arg1: i1) {
    %0 = arith.andi %arg0, %arg1 : i1
    %1 = arith.ori %arg0, %arg1 : i1
    %2 = arith.xori %arg0, %arg1 : i1
    return
  }
}

