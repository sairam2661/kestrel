"builtin.module"() ({
  "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform.any_op):
    %0 = "transform.test_add_to_param"() <{addendum = 40 : i32}> : () -> !transform.test_dialect_param
    %1 = "transform.test_add_to_param"(%0) <{addendum = 2 : i32}> : (!transform.test_dialect_param) -> !transform.test_dialect_param
    "transform.debug.emit_param_as_remark"(%1) : (!transform.test_dialect_param) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()

