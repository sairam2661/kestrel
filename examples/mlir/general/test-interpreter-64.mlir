"builtin.module"() ({
  "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform.any_op):
    %0 = "transform.test_produce_value_handle_to_self_operand"(%arg0) : (!transform.any_op) -> !transform.any_value
    "transform.debug.emit_remark_at"(%0) <{message = "value handle"}> : (!transform.any_value) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()

