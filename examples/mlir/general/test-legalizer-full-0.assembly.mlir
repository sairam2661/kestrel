module {
  func.func @multi_level_mapping() {
    %0 = "test.type_producer"() : () -> i32
    "test.type_consumer"(%0) : (i32) -> ()
    "test.return"() : () -> ()
  }
  func.func @dropped_region_with_illegal_ops() {
    "test.drop_region_op"() ({
      %0 = "test.illegal_op_f"() : () -> i32
      "test.return"() : () -> ()
    }) : () -> ()
    "test.return"() : () -> ()
  }
  func.func @replace_non_root_illegal_op() {
    %0 = "test.replace_non_root"() : () -> i32
    "test.return"() : () -> ()
  }
}

