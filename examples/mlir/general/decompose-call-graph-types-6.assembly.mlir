module {
  func.func @unconverted_op_result() -> tuple<i1, i32> {
    %0 = "test.source"() : () -> tuple<i1, i32>
    return %0 : tuple<i1, i32>
  }
}

