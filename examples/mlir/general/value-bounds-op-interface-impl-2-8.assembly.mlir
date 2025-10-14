#map = affine_map<()[s0, s1] -> (s0, s1)>
module {
  func.func @compare_affine_max(%arg0: index, %arg1: index) {
    %0 = affine.max #map()[%arg0, %arg1]
    "test.compare"(%0, %arg0) <{cmp = "GE"}> : (index, index) -> ()
    "test.compare"(%0, %arg0) <{cmp = "GT"}> : (index, index) -> ()
    "test.compare"(%0, %arg0) <{cmp = "LT"}> : (index, index) -> ()
    "test.compare"(%0, %arg0) <{cmp = "LE"}> : (index, index) -> ()
    return
  }
}

