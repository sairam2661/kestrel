module {
  func.func @failedAttrsConstraint2() {
    "testd.attrs"() {attr1 = i32, attr2 = i32} : () -> ()
    return
  }
}

