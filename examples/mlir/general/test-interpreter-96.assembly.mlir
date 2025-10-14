module attributes {transform.with_named_sequence} {
  transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
    %0 = transform.get_parent_op %arg0 {op_name = "builtin.module"} : (!transform.any_op) -> !transform.any_op
    transform.yield 
  }
}

