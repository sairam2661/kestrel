module {
  func.func @extract_from_tensor.cast(%arg0: tensor<9xf32>) -> f32 {
    %c0 = arith.constant 0 : index
    %cast = tensor.cast %arg0 : tensor<9xf32> to tensor<?xf32>
    %extracted = tensor.extract %cast[%c0] : tensor<?xf32>
    return %extracted : f32
  }
}

