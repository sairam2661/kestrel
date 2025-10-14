module {
  func.func @multiple_results() -> (memref<1xf32>, memref<2xf32>) {
    %0:2 = "test.source"() : () -> (memref<1xf32>, memref<2xf32>)
    return %0#0, %0#1 : memref<1xf32>, memref<2xf32>
  }
}

