module {
  func.func @undo_child_created_before_parent() {
    "test.illegal_op_with_region_anchor"() : () -> ()
    return
  }
}

