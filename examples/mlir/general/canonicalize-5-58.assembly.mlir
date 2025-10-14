#map = affine_map<()[s0] -> (s0 + 16, s0 * 8)>
#map1 = affine_map<()[s0, s1] -> (s0 + 4, s1 + 7)>
module {
  func.func @dont_merge_affine_max_if_not_single_sym(%arg0: index, %arg1: index, %arg2: index) -> index {
    %0 = affine.max #map()[%arg0]
    %1 = affine.max #map1()[%0, %arg2]
    return %1 : index
  }
}

