module {
  func.func @ipowi_index(%arg0: index, %arg1: index) {
    %0 = math.ipowi %arg0, %arg1 : index
    return
  }
}

