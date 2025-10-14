module {
  func.func @f(%arg0: tensor<1xf32>, %arg1: f32 {test.erase_this_arg}, %arg2: tensor<2xf32>, %arg3: f32 {test.erase_this_arg}, %arg4: tensor<3xf32>) {
    return
  }
}

