module {
  func.func @ceildivui_index(%arg0: index, %arg1: index) -> index {
    %0 = arith.ceildivui %arg0, %arg1 : index
    return %0 : index
  }
}

