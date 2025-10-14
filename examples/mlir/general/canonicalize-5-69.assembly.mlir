#map = affine_map<()[s0] -> (s0)>
module {
  func.func @max.oneval(%arg0: index) -> index {
    %0 = affine.max #map()[%arg0]
    return %0 : index
  }
}

