"builtin.module"() ({
  "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform.any_op):
    %0 = "transform.test_produce_param"() <{attr = 0 : i32}> : () -> !transform.test_dialect_param
    "transform.debug.emit_param_as_remark"(%0) : (!transform.test_dialect_param) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()

