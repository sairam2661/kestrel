module {
  module @module_a {
    func.func nested @foo() attributes {sym.new_name = "replaced_foo"}
  }
  module @module_b attributes {sym.new_name = "replaced_module_b"} {
    module @module_c attributes {sym.new_name = "replaced_module_c"} {
      func.func nested @foo() attributes {sym.new_name = "replaced_foo"}
    }
  }
  func.func @symbol_bar() {
    "foo.op"() {use_1 = @module_a::@foo, use_2 = @module_b::@module_c::@foo} : () -> ()
  }
}

