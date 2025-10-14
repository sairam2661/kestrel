#map = affine_map<(d0, d1) -> (d0 - d1)>
module {
  func.func @partial_fold_map(%arg0: index, %arg1: index) -> index {
    %c42 = arith.constant 42 : index
    %0 = affine.apply #map(%arg0, %c42)
    return %0 : index
  }
}

