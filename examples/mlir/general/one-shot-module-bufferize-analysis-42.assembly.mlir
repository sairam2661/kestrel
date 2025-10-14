module {
  func.func @recursive_function(%arg0: tensor<?xf32>, %arg1: tensor<?xf32>) -> (tensor<?xf32>, tensor<?xf32>) {
    %0:2 = call @recursive_function(%arg0, %arg1) : (tensor<?xf32>, tensor<?xf32>) -> (tensor<?xf32>, tensor<?xf32>)
    return %0#0, %0#1 : tensor<?xf32>, tensor<?xf32>
  }
}

