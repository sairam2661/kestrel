module {
  func.func @main() {
    %cst = arith.constant dense<[1.000000e+00, 2.000000e+00, 3.000000e+00]> : tensor<3xf32>
    %cast = tensor.cast %cst : tensor<3xf32> to tensor<*xf32>
    call @maybe_writing_func(%cast) : (tensor<*xf32>) -> ()
    return
  }
  func.func private @maybe_writing_func(tensor<*xf32>)
}

