module {
  func.func @typeFitsAttr() {
    %0 = "testd.any"() : () -> !testd.attr_in_type_out<i32>
    return
  }
}

