#map = affine_map<(d0) -> (d0 * 4)>
#map1 = affine_map<()[s0, s1] -> (s0 * 8)>
#map2 = affine_map<()[s0, s1] -> (s1 * 16)>
module {
  func.func @symbolic_composition_a(%arg0: index, %arg1: index) -> index {
    %0 = affine.apply #map(%arg0)
    %1 = affine.apply #map1()[%0, %arg0]
    %2 = affine.apply #map2()[%arg1, %1]
    return %2 : index
  }
}

