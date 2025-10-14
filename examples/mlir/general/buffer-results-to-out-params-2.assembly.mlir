module {
  func.func private @callee() -> (memref<1xf32>, memref<2xf32>)
  func.func @call_multiple_result() {
    %0:2 = call @callee() : () -> (memref<1xf32>, memref<2xf32>)
    "test.sink"(%0#0, %0#1) : (memref<1xf32>, memref<2xf32>) -> ()
  }
}

