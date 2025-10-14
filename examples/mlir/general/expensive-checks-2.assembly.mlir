module attributes {transform.with_named_sequence} {
  transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
    %0 = transform.test_copy_payload %arg0 : (!transform.any_op) -> !transform.any_op
    %1 = transform.test_copy_payload %arg0 : (!transform.any_op) -> !transform.any_op
    transform.test_consume_operand %0 : !transform.any_op
    transform.test_consume_operand %1 : !transform.any_op
    transform.yield 
  }
}

