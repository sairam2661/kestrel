"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "by_operand_type"}> ({
    %4 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %5 = "arith.constant"() <{value = 8 : i32}> : () -> i32
    %6 = "math.fpowi"(%4, %5) <{fastmath = #arith.fastmath<none>}> : (f32, i32) -> f32
    %7 = "arith.addf"(%4, %4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %8 = "arith.fptoui"(%7) : (f32) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{filter_operand_types = [f32], ops = ["arith.fptoui"]}> : (!transform.any_op) -> !transform.any_op
      "transform.debug.emit_remark_at"(%0) <{message = "matched op name"}> : (!transform.any_op) -> ()
      "transform.test_consume_operand"(%0) : (!transform.any_op) -> ()
      %1 = "transform.structured.match"(%arg0) <{filter_operand_types = [f32], ops = ["arith.addf"]}> : (!transform.any_op) -> !transform.any_op
      "transform.debug.emit_remark_at"(%1) <{message = "matched op name"}> : (!transform.any_op) -> ()
      "transform.test_consume_operand"(%1) : (!transform.any_op) -> ()
      %2 = "transform.structured.match"(%arg0) <{filter_operand_types = [i32], ops = ["arith.fptoui"]}> : (!transform.any_op) -> !transform.any_op
      "transform.debug.emit_remark_at"(%2) <{message = "should not match"}> : (!transform.any_op) -> ()
      "transform.test_consume_operand"(%2) : (!transform.any_op) -> ()
      %3 = "transform.structured.match"(%arg0) <{filter_operand_types = [f32], ops = ["math.fpowi"]}> : (!transform.any_op) -> !transform.any_op
      "transform.debug.emit_remark_at"(%3) <{message = "should not match"}> : (!transform.any_op) -> ()
      "transform.test_consume_operand"(%3) : (!transform.any_op) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

