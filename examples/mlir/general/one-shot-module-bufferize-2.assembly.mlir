module {
  func.func private @foo(tensor<?xf32>) -> (f32, tensor<?xf32>, f32)
  func.func @call_to_unknown_tensor_returning_func(%arg0: tensor<?xf32>) {
    %0:3 = call @foo(%arg0) : (tensor<?xf32>) -> (f32, tensor<?xf32>, f32)
    return
  }
}

