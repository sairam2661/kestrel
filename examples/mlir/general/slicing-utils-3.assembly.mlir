module {
  func.func @slicing_test_function_argument(%arg0: index) -> index {
    %0 = "slicing-test-op"(%arg0, %arg0) : (index, index) -> index
    return %0 : index
  }
}

