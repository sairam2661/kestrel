module attributes {transform.with_named_sequence} {
  transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
    %0 = transform.test_produce_empty_payload : !transform.any_op
    transform.test_consume_operand %0 : !transform.any_op
    transform.debug.emit_remark_at %0, "remark" : !transform.any_op
    transform.yield 
  }
}

