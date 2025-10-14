module {
  module @module_b {
    module @module_c {
      func.func nested @foo()
    }
  }
  func.func @symbol_bar() {
    "foo.op"() {use_1 = [{nested_symbol = [@module_b::@module_c::@foo]}], use_2 = @module_b} : () -> ()
  }
}

