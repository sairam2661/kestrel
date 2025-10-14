module {
  func.func @failedAttrsMissingAttr() {
    "testd.attrs"() {attr1 = i32} : () -> ()
    return
  }
}

