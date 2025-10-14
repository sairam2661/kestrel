module {
  func.func @if(%arg0: i1, %arg1: tensor<?xf32>, %arg2: tensor<?xf32>) -> tensor<?xf32> {
    %0 = scf.if %arg0 -> (tensor<?xf32>) {
      scf.yield %arg1 : tensor<?xf32>
    } else {
      scf.yield %arg2 : tensor<?xf32>
    }
    return %0 : tensor<?xf32>
  }
}

