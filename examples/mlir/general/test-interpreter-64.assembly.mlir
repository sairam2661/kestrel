module attributes {transform.with_named_sequence} {
  transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
    %0 = transform.test_produce_value_handle_to_self_operand %arg0 : (!transform.any_op) -> !transform.any_value
    transform.debug.emit_remark_at %0, "value handle" : !transform.any_value
    transform.yield 
  }
}

