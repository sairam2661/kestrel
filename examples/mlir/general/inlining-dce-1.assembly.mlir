module {
  func.func @live_function_e() {
    call @dead_function_e() : () -> ()
    return
  }
  func.func private @dead_function_e() {
    "test.fold_to_call_op"() <{callee = @dead_function_f}> : () -> ()
    return
  }
  func.func private @dead_function_f() {
    return
  }
}

