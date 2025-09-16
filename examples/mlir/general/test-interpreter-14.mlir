"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "foo"}> ({
    %4 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "bar"}> ({
    %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    "func.return"() : () -> ()
  }) : () -> ()
  "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform.any_op):
    "transform.alternatives"(%arg0) ({
    ^bb0(%arg2: !transform.any_op):
      %1 = "transform.test_produce_self_handle_or_forward_operand"() : () -> !transform.any_op
      "transform.test_consume_operand_of_op_kind_or_fail"(%1) <{op_kind = "transform.sequence"}> : (!transform.any_op) -> ()
      "transform.yield"() : () -> ()
    }, {
    ^bb0(%arg1: !transform.any_op):
      %0 = "transform.test_produce_self_handle_or_forward_operand"() : () -> !transform.any_op
      "transform.test_consume_operand_of_op_kind_or_fail"(%0) <{op_kind = "transform.test_produce_self_handle_or_forward_operand"}> : (!transform.any_op) -> ()
      "transform.yield"() : () -> ()
    }) : (!transform.any_op) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()

