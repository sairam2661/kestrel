module {
  func.func @succeededNamedBaseConstraint() {
    %0 = "testd.named_type_base"() : () -> i32
    %1 = "testd.named_type_base"() : () -> i64
    "testd.named_attr_base"() {attr1 = 0 : i32} : () -> ()
    "testd.named_attr_base"() {attr1 = 0 : i64} : () -> ()
    return
  }
}

