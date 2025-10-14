module {
  func.func private @ext_func(tensor<?xf32>, tensor<?xf32>)
  func.func @private_func_two_params_writing(%arg0: tensor<?xf32>) {
    call @ext_func(%arg0, %arg0) : (tensor<?xf32>, tensor<?xf32>) -> ()
    return
  }
}

