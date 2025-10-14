module {
  func.func @succeeded_attr_traits() {
    "test.attr_with_trait"() <{attr = #test.attr_with_trait}> : () -> ()
    return
  }
}

