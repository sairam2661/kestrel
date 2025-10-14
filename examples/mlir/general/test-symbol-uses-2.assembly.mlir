module {
  func.func @symbol_bar() {
    "foo.possibly_unknown_symbol_table"() ({
    }) : () -> ()
  }
}

