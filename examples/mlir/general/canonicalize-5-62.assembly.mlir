#map = affine_map<()[s0] -> (s0 + 16)>
#map1 = affine_map<()[s0] -> (s0 * 4)>
module {
  func.func @canonicalize_single_min_max(%arg0: index, %arg1: index) -> (index, index) {
    %0 = affine.min #map()[%arg0]
    %1 = affine.min #map1()[%arg1]
    return %0, %1 : index, index
  }
}

