module {
  func.func @unsupported_op(%arg0: i1) {
    cf.assert %arg0, "assertion foo"
    return
  }
}

