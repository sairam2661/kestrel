module {
  func.func @divi_signed_by_one(%arg0: i32) -> i32 {
    %c1_i32 = arith.constant 1 : i32
    %0 = arith.divsi %arg0, %c1_i32 : i32
    return %0 : i32
  }
  func.func @divi_unsigned_by_one(%arg0: i32) -> i32 {
    %c1_i32 = arith.constant 1 : i32
    %0 = arith.divui %arg0, %c1_i32 : i32
    return %0 : i32
  }
  func.func @tensor_divi_signed_by_one(%arg0: tensor<4x5xi32>) -> tensor<4x5xi32> {
    %cst = arith.constant dense<1> : tensor<4x5xi32>
    %0 = arith.divsi %arg0, %cst : tensor<4x5xi32>
    return %0 : tensor<4x5xi32>
  }
  func.func @tensor_divi_unsigned_by_one(%arg0: tensor<4x5xi32>) -> tensor<4x5xi32> {
    %cst = arith.constant dense<1> : tensor<4x5xi32>
    %0 = arith.divui %arg0, %cst : tensor<4x5xi32>
    return %0 : tensor<4x5xi32>
  }
}

