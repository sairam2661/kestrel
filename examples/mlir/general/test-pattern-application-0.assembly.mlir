module {
  func.func @update_tracked_op_mapping() {
    "test.container"() ({
      %0 = "test.foo"() {replace_with_new_op = "test.foo"} : () -> i32
    }) : () -> ()
    return
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
      %0 = transform.structured.match ops{["test.container"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["test.foo"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %0 {
        transform.apply_patterns.transform.test_patterns
      } : !transform.any_op
      transform.annotate %1 "annotated" : !transform.any_op
      transform.yield 
    }
  }
}

