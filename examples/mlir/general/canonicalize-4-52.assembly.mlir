module {
  func.func @andand0(%arg0: i32, %arg1: i32) -> i32 {
    %0 = arith.andi %arg0, %arg1 : i32
    %1 = arith.andi %arg0, %0 : i32
    return %1 : i32
  }
  func.func @andand1(%arg0: i32, %arg1: i32) -> i32 {
    %0 = arith.andi %arg0, %arg1 : i32
    %1 = arith.andi %0, %arg0 : i32
    return %1 : i32
  }
  func.func @andand2(%arg0: i32, %arg1: i32) -> i32 {
    %0 = arith.andi %arg0, %arg1 : i32
    %1 = arith.andi %arg1, %0 : i32
    return %1 : i32
  }
  func.func @andand3(%arg0: i32, %arg1: i32) -> i32 {
    %0 = arith.andi %arg0, %arg1 : i32
    %1 = arith.andi %0, %arg1 : i32
    return %1 : i32
  }
}

