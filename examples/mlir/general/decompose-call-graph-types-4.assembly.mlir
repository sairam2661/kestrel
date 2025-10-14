module {
  func.func private @callee(tuple<i1, i32>) -> tuple<i1, i32>
  func.func @caller(%arg0: tuple<i1, i32>) -> tuple<i1, i32> {
    %0 = call @callee(%arg0) : (tuple<i1, i32>) -> tuple<i1, i32>
    return %0 : tuple<i1, i32>
  }
}

