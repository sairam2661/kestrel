module {
  func.func @recursive_decomposition(%arg0: tuple<tuple<tuple<i1>>>) -> tuple<tuple<tuple<i1>>> {
    return %arg0 : tuple<tuple<tuple<i1>>>
  }
}

