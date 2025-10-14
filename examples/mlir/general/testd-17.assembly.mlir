module {
  func.func @failedDynAttrBaseConstraintNotType() {
    "testd.named_attr_base"() {attr1 = i32} : () -> ()
    return
  }
}

