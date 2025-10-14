module {
  func.func @failedAttrsConstraint() {
    "testd.attrs"() {attr1 = i64, attr2 = i64} : () -> ()
    return
  }
}

