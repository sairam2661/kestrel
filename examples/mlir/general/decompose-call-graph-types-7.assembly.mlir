module {
  func.func @nested_unconverted_op_result(%arg0: tuple<i1, tuple<i32>>) -> tuple<i1, tuple<i32>> {
    %0 = "test.op"(%arg0) : (tuple<i1, tuple<i32>>) -> tuple<i1, tuple<i32>>
    return %0 : tuple<i1, tuple<i32>>
  }
}

