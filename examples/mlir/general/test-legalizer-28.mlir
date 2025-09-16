"builtin.module"() ({
  "func.func"() <{function_type = (i64) -> (), sym_name = "use_of_replaced_bbarg"}> ({
  ^bb0(%arg0: i64):
    %0 = "test.op_with_region_fold"(%arg0) ({
      "foo.op_with_region_terminator"() : () -> ()
    }) : (i64) -> i64
    "test.invalid"(%0) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

