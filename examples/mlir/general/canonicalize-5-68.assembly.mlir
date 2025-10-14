#map = affine_map<()[s0] -> (s0)>
module {
  func.func @min.oneval(%arg0: index) -> index {
    %0 = affine.min #map()[%arg0]
    return %0 : index
  }
}

