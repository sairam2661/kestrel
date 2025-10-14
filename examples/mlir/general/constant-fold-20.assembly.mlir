module {
  func.func @divi_signed_splat_tensor() -> (tensor<4xi32>, tensor<4xi32>, tensor<4xi32>) {
    %cst = arith.constant dense<0> : tensor<4xi32>
    %cst_0 = arith.constant dense<6> : tensor<4xi32>
    %cst_1 = arith.constant dense<2> : tensor<4xi32>
    %0 = arith.divsi %cst_0, %cst_1 : tensor<4xi32>
    %cst_2 = arith.constant dense<-2> : tensor<4xi32>
    %1 = arith.divsi %cst_0, %cst_2 : tensor<4xi32>
    %2 = arith.divsi %cst_0, %cst : tensor<4xi32>
    return %0, %1, %2 : tensor<4xi32>, tensor<4xi32>, tensor<4xi32>
  }
}

