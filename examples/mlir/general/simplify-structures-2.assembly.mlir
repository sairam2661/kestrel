#map = affine_map<(d0, d1) -> (d0 + d1 + 1)>
module {
  func.func @affine.apply(%arg0: index) -> index {
    %0 = affine.apply #map(%arg0, %arg0)
    %1 = arith.addi %0, %0 : index
    return %1 : index
  }
}

