module {
  func.func @tensor_and(%arg0: tensor<2xi32>) -> tensor<2xi32> {
    %cst = arith.constant dense<-1> : tensor<2xi32>
    %cst_0 = arith.constant dense<31> : tensor<2xi32>
    %cst_1 = arith.constant dense<[31, -1]> : tensor<2xi32>
    %0 = arith.andi %arg0, %cst : tensor<2xi32>
    %1 = arith.andi %0, %cst_0 : tensor<2xi32>
    %2 = arith.andi %1, %cst_1 : tensor<2xi32>
    return %2 : tensor<2xi32>
  }
}

