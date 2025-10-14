module {
  func.func @and_index(%arg0: index) -> index {
    %c31 = arith.constant 31 : index
    %c-1 = arith.constant -1 : index
    %0 = arith.andi %arg0, %c31 : index
    %1 = arith.andi %0, %c-1 : index
    return %1 : index
  }
}

