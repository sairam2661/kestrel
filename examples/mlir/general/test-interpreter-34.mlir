"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (), sym_name = "get_parent_for_op_no_loop"}> ({
  ^bb0(%arg1: index, %arg2: index):
    %2 = "arith.muli"(%arg1, %arg2) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "func.return"() : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["arith.muli"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.get_producer_of_operand"(%0) <{operand_number = 0 : i64}> : (!transform.any_op) -> !transform.any_op
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

