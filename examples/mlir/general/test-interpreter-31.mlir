"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "consume_in_foreach"}> ({
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 2 : index}> : () -> index
    %4 = "arith.constant"() <{value = 3 : index}> : () -> index
    "func.return"() : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["arith.constant"]}> : (!transform.any_op) -> !transform.any_op
      "transform.foreach"(%0) ({
      ^bb0(%arg1: !transform.any_op):
        "transform.test_emit_remark_and_erase_operand"(%arg1) <{remark = "erasing"}> : (!transform.any_op) -> ()
        "transform.yield"() : () -> ()
      }) : (!transform.any_op) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

