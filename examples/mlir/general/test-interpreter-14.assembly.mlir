module attributes {transform.with_named_sequence} {
  func.func @foo() {
    %c0_i32 = arith.constant 0 : i32
    return
  }
  func.func @bar() {
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    return
  }
  transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
    transform.alternatives %arg0 : !transform.any_op {
    ^bb0(%arg1: !transform.any_op):
      %0 = transform.test_produce_self_handle_or_forward_operand : () -> !transform.any_op
      transform.test_consume_operand_of_op_kind_or_fail %0, "transform.sequence" : !transform.any_op
    }, {
    ^bb0(%arg1: !transform.any_op):
      %0 = transform.test_produce_self_handle_or_forward_operand : () -> !transform.any_op
      transform.test_consume_operand_of_op_kind_or_fail %0, "transform.test_produce_self_handle_or_forward_operand" : !transform.any_op
    }
    transform.yield 
  }
}

