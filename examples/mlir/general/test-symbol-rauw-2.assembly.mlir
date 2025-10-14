module {
  func.func private @failed_repl() attributes {sym.new_name = "replaced_name"}
  "foo.possibly_unknown_symbol_table"() ({
  }) : () -> ()
}

