module attributes {transform.with_named_sequence} {
  transform.named_sequence @__transform_main(%arg0: !transform.any_op, %arg1: !transform.param<i64>, %arg2: !transform.param<i64>) {
    transform.debug.emit_param_as_remark %arg1 : !transform.param<i64>
    transform.debug.emit_param_as_remark %arg2 : !transform.param<i64>
    transform.yield 
  }
}

