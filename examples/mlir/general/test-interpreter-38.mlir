"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> (), sym_name = "split_handle"}> ({
  ^bb0(%arg1: index, %arg2: index, %arg3: index):
    %5 = "arith.muli"(%arg1, %arg2) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %6 = "arith.muli"(%arg1, %arg3) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "func.return"() : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["arith.muli"]}> : (!transform.any_op) -> !transform.any_op
      %1:2 = "transform.split_handle"(%0) <{fail_on_payload_too_small = true, pass_through_empty_handle = true}> : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
      %2 = "transform.num_associations"(%1#0) : (!transform.any_op) -> !transform.param<i64>
      "transform.debug.emit_param_as_remark"(%2) : (!transform.param<i64>) -> ()
      %3 = "transform.structured.match"(%arg0) <{ops = ["arith.muli"]}> : (!transform.any_op) -> !transform.any_op
      %4:3 = "transform.split_handle"(%3) <{fail_on_payload_too_small = true, pass_through_empty_handle = true}> : (!transform.any_op) -> (!transform.any_op, !transform.any_op, !transform.any_op)
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

