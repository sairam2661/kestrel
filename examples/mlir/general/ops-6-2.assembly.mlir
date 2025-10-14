#map = affine_map<(d0)[s0] -> (1000, d0 + 512, s0)>
#map1 = affine_map<(d0, d1)[s0] -> (d0 - d1, s0 + 512)>
#map2 = affine_map<()[s0, s1] -> (s0 - s1, 11)>
#map3 = affine_map<() -> (77, 78, 79)>
module {
  func.func @affine_min(%arg0: index, %arg1: index, %arg2: index) {
    %0 = affine.min #map(%arg0)[%arg1]
    %1 = affine.min #map1(%arg0, %arg1)[%arg2]
    %2 = affine.min #map2()[%arg1, %arg2]
    %3 = affine.min #map3()
    return
  }
  func.func @affine_max(%arg0: index, %arg1: index, %arg2: index) {
    %0 = affine.max #map(%arg0)[%arg1]
    %1 = affine.max #map1(%arg0, %arg1)[%arg2]
    %2 = affine.max #map2()[%arg1, %arg2]
    %3 = affine.max #map3()
    return
  }
}

