#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<()[s0, s1, s2, s3] -> (s0 + s1 + s2 + s3)>
module {
  func.func @symbolic_composition_b(%arg0: index, %arg1: index, %arg2: index, %arg3: index) -> index {
    %0 = affine.apply #map(%arg0)
    %1 = affine.apply #map1()[%0, %0, %0, %0]
    return %1 : index
  }
}

