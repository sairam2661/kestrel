module {
  func.func @main(%arg0: i8) {
    %0 = math.ctlz %arg0 : i8
    return
  }
}

