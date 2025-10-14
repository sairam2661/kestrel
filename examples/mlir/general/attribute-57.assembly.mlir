module {
  func.func @default_value_printing(%arg0: i32) {
    test.default_value_print %arg0
    test.default_value_print {value_with_default = 1 : i32} %arg0
    return
  }
}

