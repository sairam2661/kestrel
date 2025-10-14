module attributes {transform.with_named_sequence} {
  transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
    %0 = transform.collect_matching @matcher in %arg0 : (!transform.any_op) -> !transform.any_op
    transform.debug.emit_remark_at %0, "matched" : !transform.any_op
    transform.yield 
  }
  transform.named_sequence @matcher(%arg0: !transform.any_op {transform.readonly}) -> !transform.any_op {
    transform.match.operation_name %arg0 ["transform.debug.emit_remark_at", "transform.collect_matching"] : !transform.any_op
    transform.yield %arg0 : !transform.any_op
  }
}

