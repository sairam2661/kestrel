module {
  func.func @succeeded_type_traits() {
    %0 = "test.result_type_with_trait"() : () -> !test.test_type_with_trait
    return
  }
}

