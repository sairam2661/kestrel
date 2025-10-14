module {
  func.func @op_with_custom_printer() {
    %x = test.string_attr_pretty_name
    return
  }
}

