"builtin.module"() ({
  "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform.any_op):
    %0 = "transform.test_produce_empty_payload"() : () -> !transform.any_op
    "transform.test_consume_operand"(%0) : (!transform.any_op) -> ()
    "transform.debug.emit_remark_at"(%0) <{message = "remark"}> : (!transform.any_op) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()

