module {
  %0 = "test.match_anchor_1"() ({
    "test.match_anchor_2"() : () -> ()
    "test.region_terminator"() : () -> ()
  }) : () -> i32
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
      %1 = transform.structured.match ops{["test.match_anchor_1"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %2 = transform.structured.match ops{["test.match_anchor_2"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %3 = transform.test_produce_value_handle_to_result %1, 0 : (!transform.any_op) -> !transform.any_value
      transform.test_consume_operand %3 : !transform.any_value
      transform.test_consume_operand %2 : !transform.any_op
      transform.yield 
    }
  }
}

