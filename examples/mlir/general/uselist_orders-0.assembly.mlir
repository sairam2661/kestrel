module {
  func.func @base_test(%arg0: i32) -> i32 {
    %c45_i32 = arith.constant 45 : i32
    %c46_i32 = arith.constant 46 : i32
    %0 = "test.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "test.addi"(%0, %c45_i32) : (i32, i32) -> i32
    %2 = "test.addi"(%0, %c46_i32) : (i32, i32) -> i32
    %3 = "test.addi"(%1, %2) : (i32, i32) -> i32
    %4 = "test.addi"(%3, %2) : (i32, i32) -> i32
    %5 = "test.addi"(%4, %2) : (i32, i32) -> i32
    return %5 : i32
  }
}

