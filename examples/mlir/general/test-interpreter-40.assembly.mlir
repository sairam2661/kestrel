module {
  func.func @split_handle(%arg0: index, %arg1: index, %arg2: index) {
    %0 = arith.muli %arg0, %arg1 : index
    %1 = arith.muli %arg0, %arg2 : index
    return
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
      %0 = transform.structured.match ops{["arith.muli"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1:3 = transform.split_handle %0 {fail_on_payload_too_small = false} : (!transform.any_op) -> (!transform.any_op, !transform.any_op, !transform.any_op)
      %2 = transform.num_associations %1#0 : (!transform.any_op) -> !transform.param<i64>
      transform.debug.emit_param_as_remark %2 : !transform.param<i64>
      %3 = transform.num_associations %1#1 : (!transform.any_op) -> !transform.param<i64>
      transform.debug.emit_param_as_remark %3 : !transform.param<i64>
      %4 = transform.num_associations %1#2 : (!transform.any_op) -> !transform.param<i64>
      transform.debug.emit_param_as_remark %4 : !transform.param<i64>
      transform.yield 
    }
  }
}

