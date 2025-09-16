"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "by_type"}> ({
    %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    "func.return"() : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{filter_result_type = f32, ops = ["arith.constant"]}> : (!transform.any_op) -> !transform.any_op
      "transform.debug.emit_remark_at"(%0) <{message = "matched op name"}> : (!transform.any_op) -> ()
      "transform.test_consume_operand"(%0) : (!transform.any_op) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

