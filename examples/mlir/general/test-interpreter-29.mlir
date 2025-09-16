"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "two_const_ops"}> ({
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    "func.return"() : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["arith.constant"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.param.constant"() <{value = 1 : i32}> : () -> !transform.test_dialect_param
      "transform.foreach"(%0, %1) ({
      ^bb0(%arg1: !transform.any_op, %arg2: !transform.test_dialect_param):
        "transform.yield"() : () -> ()
      }) : (!transform.any_op, !transform.test_dialect_param) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

