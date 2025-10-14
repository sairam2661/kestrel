module {
  func.func @consume_in_foreach() {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    return
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
      %0 = transform.structured.match ops{["arith.constant"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      transform.foreach %0 : !transform.any_op {
      ^bb0(%arg1: !transform.any_op):
        transform.test_emit_remark_and_erase_operand %arg1, "erasing" : !transform.any_op
      }
      transform.yield 
    }
  }
}

