module attributes {transform.with_named_sequence} {
  transform.named_sequence @match(%arg0: !transform.any_op {transform.readonly}) {
    transform.yield 
  }
  transform.named_sequence @action()
  transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
    %updated_root = transform.foreach_match in %arg0 
        @match -> @action : (!transform.any_op) -> !transform.any_op
    transform.yield 
  }
}

