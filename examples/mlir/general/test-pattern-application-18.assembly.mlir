module attributes {transform.with_named_sequence} {
  func.func @replacement_op_not_found() {
    "test.container"() ({
      %0 = "test.foo"() {replace_with_new_op = "test.bar"} : () -> i32
    }) : () -> ()
    return
  }
  transform.named_sequence @patterns(%arg0: !transform.any_op {transform.readonly}) {
    transform.apply_patterns to %arg0 {
      transform.apply_patterns.transform.test_patterns
    } : !transform.any_op
    transform.yield 
  }
  transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
    %0 = transform.structured.match ops{["test.container"]} in %arg0 : (!transform.any_op) -> !transform.any_op
    %1 = transform.structured.match ops{["test.foo"]} in %arg0 : (!transform.any_op) -> !transform.any_op
    transform.annotate %1 "annotated" : !transform.any_op
    transform.include @patterns failures(propagate) (%0) : (!transform.any_op) -> ()
    transform.yield 
  }
}

