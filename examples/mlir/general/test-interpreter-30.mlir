"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "one_const_op"}> ({
    %5 = "arith.constant"() <{value = 0 : index}> : () -> index
    "func.return"() : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["arith.constant"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.test_produce_value_handle_to_self_operand"(%0) : (!transform.any_op) -> !transform.any_value
      %2 = "transform.param.constant"() <{value = 1 : i32}> : () -> !transform.test_dialect_param
      %3 = "transform.param.constant"() <{value = 2 : i32}> : () -> !transform.test_dialect_param
      %4 = "transform.merge_handles"(%2, %3) : (!transform.test_dialect_param, !transform.test_dialect_param) -> !transform.test_dialect_param
      "transform.foreach"(%1, %0, %4) ({
      ^bb0(%arg1: !transform.any_value, %arg2: !transform.any_op, %arg3: !transform.test_dialect_param):
        "transform.yield"() : () -> ()
      }) : (!transform.any_value, !transform.any_op, !transform.test_dialect_param) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

