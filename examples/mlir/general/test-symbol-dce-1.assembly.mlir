module attributes {test.nested} {
  module @public_module {
    func.func nested @dead_nested_function()
    func.func private @private_function()
    func.func nested @nested_function() {
      "foo.return"() {uses = [@private_function]} : () -> ()
    }
  }
  "live.user"() {uses = [@public_module::@nested_function]} : () -> ()
}

