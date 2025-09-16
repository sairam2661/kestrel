"builtin.module"() ({
  "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform.any_op):
    %0 = "transform.test_produce_self_handle_or_forward_operand"() : () -> !transform.any_op
    "transform.test_re_enter_region"(%0) ({
    ^bb0(%arg1: !transform.any_op):
      "transform.test_consume_operand"(%arg1) : (!transform.any_op) -> ()
      "transform.yield"() : () -> ()
    }) : (!transform.any_op) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()

