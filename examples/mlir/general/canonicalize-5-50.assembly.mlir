#map = affine_map<()[s0] -> (s0 + 16, s0 * 8)>
#map1 = affine_map<()[s0, s1, s2] -> (s0, s1 + 1, s2 * 2)>
module {
  func.func @merge_mixed_uses_of_affine_min_ops(%arg0: index, %arg1: index) -> index {
    %0 = affine.min #map()[%arg0]
    %1 = affine.min #map1()[%0, %0, %arg1]
    return %1 : index
  }
}

