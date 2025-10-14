module {
  func.func @int_attrs_pass() {
    "test.i8_attr"() {attr_00 = -1 : i8, attr_01 = -1 : i16, attr_02 = -1 : i32, attr_03 = -1 : i64} : () -> ()
    return
  }
}

