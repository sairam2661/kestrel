module {
  func.func @ipowi(%arg0: i64, %arg1: i64) {
    %0 = math.ipowi %arg0, %arg1 : i64
    return
  }
}

