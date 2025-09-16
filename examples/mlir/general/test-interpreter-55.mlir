"builtin.module"() ({
  "builtin.module"() ({
    "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg2: !transform.any_op):
      %4 = "transform.structured.match"(%arg2) <{ops = ["func.func"]}> : (!transform.any_op) -> !transform.any_op
      %5 = "transform.test_produce_param_with_number_of_test_ops"(%4) : (!transform.any_op) -> !transform.test_dialect_param
      "transform.debug.emit_param_as_remark"(%5) : (!transform.test_dialect_param) -> ()
      %6 = "transform.test_add_to_param"(%5) <{addendum = 100 : i32}> : (!transform.test_dialect_param) -> !transform.test_dialect_param
      "transform.debug.emit_param_as_remark"(%6) : (!transform.test_dialect_param) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
  "func.func"() <{function_type = (i32) -> (), sym_name = "one_test_op", sym_visibility = "private"}> ({
  ^bb0(%arg1: i32):
    %3 = "test.op_a"(%arg1) <{attr = 0 : i32}> : (i32) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> (), sym_name = "three_test_ops", sym_visibility = "private"}> ({
  ^bb0(%arg0: i32):
    %0 = "test.op_a"(%arg0) <{attr = 0 : i32}> : (i32) -> i32
    %1 = "test.op_a"(%arg0) <{attr = 0 : i32}> : (i32) -> i32
    %2 = "test.op_a"(%arg0) <{attr = 0 : i32}> : (i32) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

