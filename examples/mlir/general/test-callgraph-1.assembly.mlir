module attributes {test.name = "nested"} {
  module @nested_module {
    func.func @func_a() {
      return
    }
  }
  func.func @func_b() {
    "test.conversion_call_op"() <{callee = @nested_module::@func_a}> : () -> ()
    return
  }
}

