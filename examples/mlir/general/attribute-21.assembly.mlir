module {
  func.func @string_attr_custom_type_valid() {
    test.string_attr_with_type "string_data" : i64
    return
  }
}

