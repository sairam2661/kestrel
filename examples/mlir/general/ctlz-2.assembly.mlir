module {
  func.func @ctlz_index(%arg0: index) {
    %0 = math.ctlz %arg0 : index
    return
  }
}

