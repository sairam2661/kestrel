#map = affine_map<()[s0, s1] -> (s0 + s1, s1 + 16, 32)>
#map1 = affine_map<()[s0, s1] -> (s0 + s1, 32, s1 + 16)>
module {
  func.func @canonicalize_multi_min_max(%arg0: index, %arg1: index) -> (index, index) {
    %0 = affine.min #map()[%arg0, %arg1]
    %1 = affine.max #map1()[%arg0, %arg1]
    return %0, %1 : index, index
  }
}

