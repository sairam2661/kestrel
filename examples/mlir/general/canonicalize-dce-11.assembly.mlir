module {
  func.func @f() {
    %0 = "test.test_effects_result"() : () -> i32
    return
  }
}

