module {
  func.func @identity(%arg0: tuple<i1, i32>) -> tuple<i1, i32> {
    return %arg0 : tuple<i1, i32>
  }
}

