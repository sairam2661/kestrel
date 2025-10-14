module {
  func.func @ceildivi_index(%arg0: index, %arg1: index) -> index {
    %0 = arith.ceildivsi %arg0, %arg1 : index
    return %0 : index
  }
}

