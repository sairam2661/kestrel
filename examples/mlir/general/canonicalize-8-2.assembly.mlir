module {
  func.func @cf.assert(%arg0: i1) {
    cf.assert %arg0, "Computer says no"
    return
  }
}

