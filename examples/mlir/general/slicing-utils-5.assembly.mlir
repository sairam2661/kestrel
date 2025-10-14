module {
  func.func @graph_region_with_cycle() {
    test.isolated_graph_region {
      %0 = "slicing-test-op"(%1) : (i1) -> i1
      %1 = "slicing-test-op"(%0) : (i1) -> i1
    }
    return
  }
}

