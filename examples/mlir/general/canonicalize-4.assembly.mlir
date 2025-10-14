module {
  func.func @arith.floordivsi_by_one(%arg0: i32) -> i32 {
    %c1_i32 = arith.constant 1 : i32
    %0 = arith.floordivsi %arg0, %c1_i32 : i32
    return %0 : i32
  }
  func.func @tensor_arith.floordivsi_by_one(%arg0: tensor<4x5xi32>) -> tensor<4x5xi32> {
    %cst = arith.constant dense<1> : tensor<4x5xi32>
    %0 = arith.floordivsi %arg0, %cst : tensor<4x5xi32>
    return %0 : tensor<4x5xi32>
  }
  func.func @arith.floordivsi_by_one_overflow() -> i64 {
    %c-1_i64 = arith.constant -1 : i64
    %c-9223372036854775808_i64 = arith.constant -9223372036854775808 : i64
    %0 = arith.floordivsi %c-9223372036854775808_i64, %c-1_i64 : i64
    return %0 : i64
  }
}

