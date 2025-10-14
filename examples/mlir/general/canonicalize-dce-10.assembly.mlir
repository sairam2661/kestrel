module {
  func.func @f() {
    test.graph_region {
      %0 = math.exp %1 : f32
      %1 = math.exp %0 : f32
      "test.terminator"() : () -> ()
    }
    return
  }
}

