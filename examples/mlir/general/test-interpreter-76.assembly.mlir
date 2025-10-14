module {
  func.func @get_result_of_op_bbarg(%arg0: index, %arg1: index) -> index {
    %0 = arith.addi %arg0, %arg1 : index
    return %0 : index
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
      %0 = transform.structured.match ops{["arith.addi"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.test_produce_value_handle_to_argument_of_parent_block %0, 0 : (!transform.any_op) -> !transform.any_value
      %2 = transform.get_defining_op %1 : (!transform.any_value) -> !transform.any_op
      transform.debug.emit_remark_at %2, "matched" : !transform.any_op
      transform.yield 
    }
  }
}

