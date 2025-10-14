module {
  func.func @bounded_recursion() {
    test.recursive_rewrite 3
    return
  }
}

