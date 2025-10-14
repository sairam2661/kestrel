module {
  func.func @one_const_op() {
    %c0 = arith.constant 0 : index
    return
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
      %0 = transform.structured.match ops{["arith.constant"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.test_produce_value_handle_to_self_operand %0 : (!transform.any_op) -> !transform.any_value
      %2 = transform.param.constant 1 : i32 -> !transform.test_dialect_param
      %3 = transform.param.constant 2 : i32 -> !transform.test_dialect_param
      %4 = transform.merge_handles %2, %3 : !transform.test_dialect_param
      transform.foreach %1, %0, %4 : !transform.any_value, !transform.any_op, !transform.test_dialect_param {
      ^bb0(%arg1: !transform.any_value, %arg2: !transform.any_op, %arg3: !transform.test_dialect_param):
      }
      transform.yield 
    }
  }
}

