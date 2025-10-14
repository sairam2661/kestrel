module {
  func.func @succeededParent1OneOf() {
    "test.parent1"() ({
      "test.child_with_parent_one_of"() : () -> ()
      "test.finish"() : () -> ()
    }) : () -> ()
    return
  }
}

