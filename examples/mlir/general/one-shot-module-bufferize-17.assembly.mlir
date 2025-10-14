module {
  func.func private @external_func(tensor<?xf32>)
  func.func @callee(%arg0: tensor<?xf32> {bufferization.buffer_layout = affine_map<(d0)[s0, s1] -> (d0)>}, %arg1: tensor<?xf32>, %arg2: tensor<?xf32>) {
    call @external_func(%arg0) : (tensor<?xf32>) -> ()
    call @external_func(%arg1) : (tensor<?xf32>) -> ()
    call @external_func(%arg2) : (tensor<?xf32>) -> ()
    return
  }
  func.func @entry(%arg0: tensor<?xf32> {bufferization.buffer_layout = affine_map<(d0)[s0, s1] -> (d0)>, bufferization.writable = false}, %arg1: tensor<?xf32> {bufferization.buffer_layout = affine_map<(d0)[s0, s1] -> (d0)>, bufferization.writable = false}, %arg2: tensor<?xf32> {bufferization.writable = false}) {
    call @callee(%arg0, %arg1, %arg2) : (tensor<?xf32>, tensor<?xf32>, tensor<?xf32>) -> ()
    return
  }
}

