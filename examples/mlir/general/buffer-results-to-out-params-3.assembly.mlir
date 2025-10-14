module {
  func.func private @callee() -> (i1, memref<1xf32>, i32)
  func.func @call_non_memref_result() {
    %0:3 = call @callee() : () -> (i1, memref<1xf32>, i32)
    "test.sink"(%0#0, %0#1, %0#2) : (i1, memref<1xf32>, i32) -> ()
  }
}

