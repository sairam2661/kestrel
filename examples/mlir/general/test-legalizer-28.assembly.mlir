module {
  func.func @use_of_replaced_bbarg(%arg0: i64) {
    %0 = "test.op_with_region_fold"(%arg0) ({
      "foo.op_with_region_terminator"() : () -> ()
    }) : (i64) -> i64
    "test.invalid"(%0) : (i64) -> ()
  }
}

