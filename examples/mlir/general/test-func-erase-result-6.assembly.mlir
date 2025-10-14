module {
  func.func private @f() -> (tensor<1xf32>, f32 {test.erase_this_result}, tensor<2xf32>, f32 {test.erase_this_result}, tensor<3xf32>)
}

