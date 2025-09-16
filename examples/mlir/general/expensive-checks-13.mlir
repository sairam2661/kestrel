"builtin.module"() ({
  "test.op_with_regions"() ({
  ^bb0(%arg1: i32):
    "test.op_with_regions"() ({
      "test.match_anchor_2"() : () -> ()
      "test.region_terminator"() : () -> ()
    }) : () -> ()
    "test.match_anchor_1"() : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["test.match_anchor_1"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.structured.match"(%arg0) <{ops = ["test.match_anchor_2"]}> : (!transform.any_op) -> !transform.any_op
      %2 = "transform.test_produce_value_handle_to_argument_of_parent_block"(%0) <{number = 0 : i64}> : (!transform.any_op) -> !transform.any_value
      "transform.test_consume_operand"(%2) : (!transform.any_value) -> ()
      "transform.test_consume_operand"(%1) : (!transform.any_op) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

