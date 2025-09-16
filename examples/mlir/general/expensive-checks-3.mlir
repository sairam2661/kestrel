"builtin.module"() ({
  "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform.any_op):
    %0 = "transform.test_copy_payload"(%arg0) : (!transform.any_op) -> !transform.any_op
    %1 = "transform.test_copy_payload"(%arg0) : (!transform.any_op) -> !transform.any_op
    "transform.test_consume_operand"(%0, %1) : (!transform.any_op, !transform.any_op) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()

