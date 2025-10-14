module {
  func.func @select() {
    "test.foo"() : () -> ()
    "test.bar"() : () -> ()
    "test.foo"() : () -> ()
    return
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
      %0 = transform.structured.match ops{["func.func"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match in %0 : (!transform.any_op) -> !transform.any_op
      %2 = transform.num_associations %1 : (!transform.any_op) -> !transform.param<i64>
      transform.debug.emit_param_as_remark %2 : !transform.param<i64>
      %3 = transform.select "test.foo" in %1 : (!transform.any_op) -> !transform.any_op
      transform.debug.emit_remark_at %3, "found foo" : !transform.any_op
      %4 = transform.select "test.bar" in %1 : (!transform.any_op) -> !transform.any_op
      transform.debug.emit_remark_at %4, "found bar" : !transform.any_op
      transform.yield 
    }
  }
}

