module {
  func.func private @callee() -> memref<1xf32>
  func.func @call_basic() {
    %0 = call @callee() : () -> memref<1xf32>
    "test.sink"(%0) : (memref<1xf32>) -> ()
    return
  }
}

