#map = affine_map<(d0)[s0] -> (d0 + s0 * 42 - 1)>
#map1 = affine_map<(d0) -> (d0 + 7)>
module {
  func.func @mix_dims_and_symbols_b(%arg0: index, %arg1: index) -> index {
    %0 = affine.apply #map(%arg0)[%arg1]
    %1 = affine.apply #map1(%0)
    return %1 : index
  }
}

