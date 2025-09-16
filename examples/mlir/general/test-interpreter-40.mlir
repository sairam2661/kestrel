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
      %1:3 = "transform.split_handle"(%0) <{fail_on_payload_too_small = false, pass_through_empty_handle = true}> : (!transform.any_op) -> (!transform.any_op, !transform.any_op, !transform.any_op)
      %2 = "transform.num_associations"(%1#0) : (!transform.any_op) -> !transform.param<i64>
      "transform.debug.emit_param_as_remark"(%2) : (!transform.param<i64>) -> ()
      %3 = "transform.num_associations"(%1#1) : (!transform.any_op) -> !transform.param<i64>
      "transform.debug.emit_param_as_remark"(%3) : (!transform.param<i64>) -> ()
      %4 = "transform.num_associations"(%1#2) : (!transform.any_op) -> !transform.param<i64>
      "transform.debug.emit_param_as_remark"(%4) : (!transform.param<i64>) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

