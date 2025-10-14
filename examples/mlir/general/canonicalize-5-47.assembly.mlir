#map = affine_map<(d0)[s0] -> (16, d0 - s0)>
#map1 = affine_map<(d0)[s0] -> (s0 * 3, d0)>
#map2 = affine_map<(d0)[s0] -> (s0, -d0 + 5)>
module {
  func.func @merge_affine_min_ops(%arg0: index, %arg1: index, %arg2: index, %arg3: index) -> (index, index) {
    %0 = affine.min #map(%arg0)[%arg1]
    %1 = affine.min #map1(%0)[%arg2]
    %2 = affine.min #map2(%arg3)[%0]
    return %1, %2 : index, index
  }
}

