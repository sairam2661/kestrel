module {
  func.func @succeededParentOneOf() {
    "test.parent"() ({
      "test.child_with_parent_one_of"() : () -> ()
      "test.finish"() : () -> ()
    }) : () -> ()
    return
  }
}

