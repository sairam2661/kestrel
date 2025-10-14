#map = affine_map<(d0)[s0] -> (16, d0 - s0)>
#map1 = affine_map<(d0)[s0] -> (s0 * 3, d0)>
#map2 = affine_map<(d0)[s0] -> (s0, -d0 + 5)>
module {
  func.func @merge_affine_max_ops(%arg0: index, %arg1: index, %arg2: index, %arg3: index) -> (index, index) {
    %0 = affine.max #map(%arg0)[%arg1]
    %1 = affine.max #map1(%0)[%arg2]
    %2 = affine.max #map2(%arg3)[%0]
    return %1, %2 : index, index
  }
}

