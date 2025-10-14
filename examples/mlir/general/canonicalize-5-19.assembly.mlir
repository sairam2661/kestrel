#map = affine_map<(d0) -> (d0 * 4)>
#map1 = affine_map<()[s0, s1] -> (s0 * 4)>
#map2 = affine_map<()[s0, s1] -> (s1)>
#map3 = affine_map<()[s0, s1] -> (1024)>
module {
  func.func @mix_dims_and_symbols_g(%arg0: index, %arg1: index) -> (index, index, index) {
    %0 = affine.apply #map(%arg0)
    %1 = affine.apply #map1()[%arg1, %0]
    %2 = affine.apply #map2()[%arg1, %0]
    %3 = affine.apply #map3()[%arg1, %0]
    return %1, %2, %3 : index, index, index
  }
}

