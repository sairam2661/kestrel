module attributes {transform.with_named_sequence} {
  func.func @erase_tracked_op_in_named_sequence() {
    "test.container"() ({
      %0 = "test.erase_op"() {replace_with_new_op = "test.foo"} : () -> i32
    }) : () -> ()
    return
  }
  transform.named_sequence @foo(%arg0: !transform.any_op {transform.readonly}) {
    transform.apply_patterns to %arg0 {
      transform.apply_patterns.transform.test_patterns
    } : !transform.any_op
    transform.yield 
  }
  transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
    %0 = transform.structured.match ops{["test.container"]} in %arg0 : (!transform.any_op) -> !transform.any_op
    %1 = transform.structured.match ops{["test.erase_op"]} in %arg0 : (!transform.any_op) -> !transform.any_op
    transform.debug.emit_remark_at %1, "matched op" : !transform.any_op
    transform.include @foo failures(propagate) (%0) : (!transform.any_op) -> ()
    transform.debug.emit_remark_at %1, "op was deleted" : !transform.any_op
    transform.yield 
  }
}

