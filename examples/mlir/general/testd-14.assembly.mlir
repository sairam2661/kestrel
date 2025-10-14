module {
  func.func @failedDynAttrBaseConstraintNotType() {
    "testd.dyn_attr_base"() {attr1 = i32} : () -> ()
    return
  }
}

