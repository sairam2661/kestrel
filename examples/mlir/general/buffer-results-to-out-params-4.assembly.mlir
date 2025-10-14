module {
  func.func private @callee() -> memref<?xf32>
  func.func @call_non_memref_result() {
    %0 = call @callee() : () -> memref<?xf32>
    "test.sink"(%0) : (memref<?xf32>) -> ()
  }
}

