module attributes {transform.with_named_sequence} {
  transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
    %0 = transform.test_add_to_param 40
    %1 = transform.test_add_to_param %0, 2
    transform.debug.emit_param_as_remark %1 : !transform.test_dialect_param
    transform.yield 
  }
}

