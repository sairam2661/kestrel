module attributes {transform.with_named_sequence} {
  transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
    %0 = transform.collect_matching @matcher in %arg0 : (!transform.any_op) -> !transform.any_op
    transform.yield 
  }
  transform.named_sequence @matcher(!transform.any_op {transform.readonly}) -> !transform.any_op
}

