module {
  "test.match_anchor_1"() ({
  ^bb0(%arg0: f32):
    "test.match_anchor_2"() : () -> ()
    "test.region_terminator"() : () -> ()
  }) : () -> ()
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
      %0 = transform.structured.match ops{["test.match_anchor_2"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.test_produce_value_handle_to_argument_of_parent_block %0, 0 : (!transform.any_op) -> !transform.any_value
      transform.test_consume_operand %1 : !transform.any_value
      transform.test_consume_operand %0 : !transform.any_op
      transform.yield 
    }
  }
}

