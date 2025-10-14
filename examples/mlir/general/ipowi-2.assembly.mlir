module {
  func.func @ipowi(%arg0: i8, %arg1: i8) {
    %0 = math.ipowi %arg0, %arg1 : i8
    return
  }
}

