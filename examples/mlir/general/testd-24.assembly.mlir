module {
  func.func @succeededAttrs() {
    "testd.attrs"() {attr1 = i32, attr2 = i64} : () -> ()
    return
  }
}

