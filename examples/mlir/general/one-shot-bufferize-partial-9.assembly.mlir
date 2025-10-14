module {
  func.func @simple_scf_if(%arg0: tensor<?xf32> {bufferization.writable = true}, %arg1: i1, %arg2: index, %arg3: f32) -> (tensor<?xf32>, index) {
    %0:2 = scf.if %arg1 -> (tensor<?xf32>, index) {
      scf.yield %arg0, %arg2 : tensor<?xf32>, index
    } else {
      %inserted = tensor.insert %arg3 into %arg0[%arg2] : tensor<?xf32>
      scf.yield %inserted, %arg2 : tensor<?xf32>, index
    }
    return %0#0, %0#1 : tensor<?xf32>, index
  }
}

