module {
  func.func @positive_int_attr_pass() {
    "test.positive_int_attr"() <{i32attr = 5 : i32, i64attr = 10 : i64}> : () -> ()
    return
  }
}

