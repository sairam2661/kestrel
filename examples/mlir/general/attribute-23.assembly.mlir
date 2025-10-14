module {
  func.func @string_attr_custom_mixed_type() {
    test.string_attr_with_mixed_type "string_data" : i64
    test.string_attr_with_mixed_type 42 : i64
    return
  }
}

