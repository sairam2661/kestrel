#map = affine_map<(d0)[s0] -> (1000, d0 + 512, s0 + 1)>
module {
  func.func @affine_max(%arg0: index, %arg1: index, %arg2: index) {
    %c511 = arith.constant 511 : index
    %c0 = arith.constant 0 : index
    %0 = affine.max #map(%c0)[%c511]
    "op0"(%0) : (index) -> ()
    return
  }
}

