"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> index, sym_name = "get_result_of_op_bbarg"}> ({
  ^bb0(%arg1: index, %arg2: index):
    %3 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "func.return"(%3) : (index) -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["arith.addi"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.test_produce_value_handle_to_argument_of_parent_block"(%0) <{number = 0 : i64}> : (!transform.any_op) -> !transform.any_value
      %2 = "transform.get_defining_op"(%1) : (!transform.any_value) -> !transform.any_op
      "transform.debug.emit_remark_at"(%2) <{message = "matched"}> : (!transform.any_op) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

