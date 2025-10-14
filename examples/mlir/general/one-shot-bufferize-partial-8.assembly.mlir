module {
  func.func @simple_tensor_test(%arg0: tensor<?xf32>, %arg1: f32) -> tensor<?xf32> {
    %c0 = arith.constant 0 : index
    %inserted = tensor.insert %arg1 into %arg0[%c0] : tensor<?xf32>
    return %inserted : tensor<?xf32>
  }
}

