module attributes {transform.with_named_sequence} {
  transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
    %0 = transform.test_produce_self_handle_or_forward_operand : () -> !transform.any_op
    transform.test_re_enter_region %0 : !transform.any_op {
    ^bb0(%arg1: !transform.any_op):
      transform.test_consume_operand %arg1 : !transform.any_op
      transform.yield 
    }
    transform.yield 
  }
}

