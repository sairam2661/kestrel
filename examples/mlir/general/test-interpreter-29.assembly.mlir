module {
  func.func @two_const_ops() {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    return
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
      %0 = transform.structured.match ops{["arith.constant"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.param.constant 1 : i32 -> !transform.test_dialect_param
      transform.foreach %0, %1 : !transform.any_op, !transform.test_dialect_param {
      ^bb0(%arg1: !transform.any_op, %arg2: !transform.test_dialect_param):
      }
      transform.yield 
    }
  }
}

