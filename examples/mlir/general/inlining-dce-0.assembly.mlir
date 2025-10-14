module {
  func.func private @dead_function() {
    return
  }
  func.func @dead_function_b() {
    return
  }
  func.func @live_function() {
    call @dead_function_b() : () -> ()
    return
  }
  func.func @live_function_b() {
    return
  }
  func.func private @dead_function_c() {
    call @live_function_b() : () -> ()
    return
  }
  func.func private @dead_function_d() {
    call @dead_function_c() : () -> ()
    call @dead_function_c() : () -> ()
    return
  }
  func.func @live_function_c() {
    call @dead_function_c() : () -> ()
    call @dead_function_d() : () -> ()
    return
  }
  func.func private @live_function_d() {
    return
  }
  "live.user"() {use = @live_function_d} : () -> ()
}

