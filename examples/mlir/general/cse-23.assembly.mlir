module {
  func.func @cse_multiple_regions(%arg0: i1, %arg1: tensor<5xf32>) -> (tensor<5xf32>, tensor<5xf32>) {
    %0 = scf.if %arg0 -> (tensor<5xf32>) {
      %2 = tensor.empty() : tensor<5xf32>
      scf.yield %2 : tensor<5xf32>
    } else {
      scf.yield %arg1 : tensor<5xf32>
    }
    %1 = scf.if %arg0 -> (tensor<5xf32>) {
      %2 = tensor.empty() : tensor<5xf32>
      scf.yield %2 : tensor<5xf32>
    } else {
      scf.yield %arg1 : tensor<5xf32>
    }
    return %0, %1 : tensor<5xf32>, tensor<5xf32>
  }
}

