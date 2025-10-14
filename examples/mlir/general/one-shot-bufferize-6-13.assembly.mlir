module {
  func.func @dim_not_reading(%arg0: tensor<?xf32>, %arg1: f32, %arg2: index) -> (tensor<?xf32>, index) {
    %c0 = arith.constant 0 : index
    %inserted = tensor.insert %arg1 into %arg0[%arg2] : tensor<?xf32>
    %dim = tensor.dim %arg0, %c0 : tensor<?xf32>
    return %inserted, %dim : tensor<?xf32>, index
  }
}

