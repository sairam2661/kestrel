module attributes {test.no_dce_non_hidden_parent} {
  module @public_module {
    func.func nested @nested_function()
  }
  module @nested_module attributes {sym_visibility = "nested"} {
    func.func nested @nested_function()
  }
  module @private_module attributes {sym_visibility = "private"} {
    func.func nested @nested_function()
  }
  "live.user"() {uses = [@nested_module, @private_module]} : () -> ()
}

