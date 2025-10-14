module {
  func.func @different_attributes(%arg0: index, %arg1: index) -> (i1, i1, i1) {
    %0 = arith.cmpi slt, %arg0, %arg1 : index
    %1 = arith.cmpi ne, %arg0, %arg1 : index
    %2 = arith.cmpi ne, %arg0, %arg1 : index
    return %0, %1, %2 : i1, i1, i1
  }
}

