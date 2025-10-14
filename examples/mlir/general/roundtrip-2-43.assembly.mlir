module {
  func.func @sparse_has_runtime() -> i1 {
    %0 = sparse_tensor.has_runtime_library
    return %0 : i1
  }
}

