#map = affine_map<()[s0] -> (s0 + 16, s0 * 8)>
#map1 = affine_map<()[s0] -> (s0 + 8, s0 * 4)>
#map2 = affine_map<()[s0, s1, s2] -> (s0, s1 + 7, s2)>
module {
  func.func @merge_multiple_affine_min_ops(%arg0: index, %arg1: index, %arg2: index) -> index {
    %0 = affine.min #map()[%arg0]
    %1 = affine.min #map1()[%arg1]
    %2 = affine.min #map2()[%0, %arg2, %1]
    return %2 : index
  }
}

