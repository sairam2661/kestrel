module {
  func.func @slicing_test_multiple_return(%arg0: index) -> (index, index) {
    %0:2 = "slicing-test-op"(%arg0, %arg0) : (index, index) -> (index, index)
    return %0#0, %0#1 : index, index
  }
}

