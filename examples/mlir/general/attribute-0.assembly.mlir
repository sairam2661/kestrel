module {
  func.func @any_attr_of_pass() {
    "test.any_attr_of_i32_str"() <{attr = 3 : i32}> : () -> ()
    "test.any_attr_of_i32_str"() <{attr = "string_data"}> : () -> ()
    return
  }
}

