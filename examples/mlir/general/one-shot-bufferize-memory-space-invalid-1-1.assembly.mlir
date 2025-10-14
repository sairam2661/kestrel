module {
  func.func @memory_space_of_unknown_op() -> f32 {
    %c0 = arith.constant 0 : index
    %0 = "test.dummy_op"() : () -> tensor<10xf32>
    %extracted = tensor.extract %0[%c0] : tensor<10xf32>
    return %extracted : f32
  }
}

