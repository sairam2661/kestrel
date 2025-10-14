module {
  func.func @scf_if_inplace1(%arg0: tensor<?xf32> {bufferization.writable = true}, %arg1: tensor<?xf32> {bufferization.writable = true}, %arg2: i1) -> tensor<?xf32> {
    %0 = scf.if %arg2 -> (tensor<?xf32>) {
      scf.yield %arg0 : tensor<?xf32>
    } else {
      scf.yield %arg1 : tensor<?xf32>
    }
    return %0 : tensor<?xf32>
  }
}

