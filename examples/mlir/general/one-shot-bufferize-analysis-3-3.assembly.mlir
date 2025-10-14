module {
  func.func @read_of_undef_is_not_a_conflict(%arg0: f32, %arg1: index) -> f32 {
    %0 = tensor.empty() : tensor<10xf32>
    %inserted = tensor.insert %arg0 into %0[%arg1] : tensor<10xf32>
    %extracted = tensor.extract %0[%arg1] : tensor<10xf32>
    return %extracted : f32
  }
}

