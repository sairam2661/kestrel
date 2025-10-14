module {
  func.func @attrFitsAttr() {
    %0 = "testd.any"() : () -> !testd.attr_in_type_out<"foo">
    return
  }
}

