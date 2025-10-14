module {
  func.func @copy_of_unranked_tensor(%arg0: tensor<*xf32>) -> tensor<*xf32> {
    call @maybe_writing_func(%arg0) : (tensor<*xf32>) -> ()
    return %arg0 : tensor<*xf32>
  }
  func.func private @maybe_writing_func(tensor<*xf32>)
}

