module attributes {transform.with_named_sequence} {
  transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
    %0 = transform.test_produce_param_with_number_of_test_ops %arg0 : !transform.any_op
    transform.test_consume_operand %0 : !transform.test_dialect_param
    transform.yield 
  }
}

