module attributes {transform.with_named_sequence} {
  transform.named_sequence @match_func(%arg0: !transform.any_op {transform.readonly}) -> !transform.any_op {
    transform.match.operation_name %arg0 ["func.func"] : !transform.any_op
    transform.yield %arg0 : !transform.any_op
  }
  transform.named_sequence @print_func(%arg0: !transform.any_op {transform.readonly}) {
    transform.debug.emit_remark_at %arg0, "matched func" : !transform.any_op
    transform.yield 
  }
  transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
    %updated_root = transform.foreach_match in %arg0 
        @match_func -> @print_func : (!transform.any_op) -> !transform.any_op
    transform.yield 
  }
  func.func @payload() {
    return
  }
  func.func private @declaration()
  "test.something_else"() : () -> ()
}

