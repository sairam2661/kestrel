module {
  func.func @subi_splat_tensor() -> tensor<4xi32> {
    %cst = arith.constant dense<4> : tensor<4xi32>
    %cst_0 = arith.constant dense<1> : tensor<4xi32>
    %0 = arith.subi %cst, %cst_0 : tensor<4xi32>
    return %0 : tensor<4xi32>
  }
}

