module {
  func.func @test_annotation() {
    %0 = "test.annotate_me"() : () -> i1
    %1 = "test.annotate_me"() {existing_attr = "test"} : () -> i1
    %2 = "test.annotate_me"() {new_attr = 0 : i64} : () -> i1
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
      %0 = transform.structured.match ops{["test.annotate_me"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.test_produce_param_with_number_of_test_ops %0 : !transform.any_op
      transform.annotate %0 "new_attr" = %1 : !transform.any_op, !transform.test_dialect_param
      %2 = transform.param.constant 2 : i64 -> !transform.param<i64>
      transform.annotate %0 "broadcast_attr" = %2 : !transform.any_op, !transform.param<i64>
      transform.annotate %0 "unit_attr" : !transform.any_op
      %3 = transform.param.constant "example" -> !transform.any_param
      transform.annotate %0 "any_attr" = %3 : !transform.any_op, !transform.any_param
      transform.yield 
    }
  }
}

