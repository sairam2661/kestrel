"builtin.module"() ({
  "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform.any_op):
    %0 = "transform.test_produce_param_with_number_of_test_ops"(%arg0) : (!transform.any_op) -> !transform.test_dialect_param
    "transform.test_consume_operand"(%0) : (!transform.test_dialect_param) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()

