#map = affine_map<() -> (4)>
module {
  func.func @compare_const_map() {
    %c5 = arith.constant 5 : index
    "test.compare"(%c5) <{cmp = "GT", rhs_map = #map}> : (index) -> ()
    "test.compare"(%c5) <{cmp = "LT", lhs_map = #map}> : (index) -> ()
    return
  }
}

