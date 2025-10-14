module {
  "test.top_level_op_attr_mismatch"() {foo = "bar"} : () -> ()
  "test.top_level_op_attr_mismatch"() {foo = "bar2"} : () -> ()
}

