"builtin.module"() ({
  "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform.any_op):
    %0 = "transform.test_produce_self_handle_or_forward_operand"() {foo = "bar"} : () -> !transform.any_op
    "transform.test_consume_operand_of_op_kind_or_fail"(%0) <{op_kind = "transform.sequence"}> : (!transform.any_op) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()

