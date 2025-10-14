#map = affine_map<(d0, d1) -> (d0, d1)>
module {
  func.func @affine_min(%arg0: index) -> (index, index) {
    %c42 = arith.constant 42 : index
    %c44 = arith.constant 44 : index
    %0 = affine.max #map(%c42, %arg0)
    %1 = affine.max #map(%c42, %c44)
    return %0, %1 : index, index
  }
}

