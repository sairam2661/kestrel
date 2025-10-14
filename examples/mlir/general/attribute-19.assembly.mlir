module {
  func.func @correct_type_array_attr_pass() {
    "test.type_array_attr"() <{attr = [i32, f32]}> : () -> ()
    return
  }
}

