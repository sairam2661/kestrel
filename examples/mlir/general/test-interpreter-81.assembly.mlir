module attributes {transform.with_named_sequence} {
  transform.named_sequence @match1(%arg0: !transform.any_op {transform.readonly}) -> !transform.any_op {
    transform.test_succeed_if_operand_of_op_kind %arg0, "test.some_op" : !transform.any_op
    transform.yield %arg0 : !transform.any_op
  }
  transform.named_sequence @match2(%arg0: !transform.any_op {transform.readonly}) -> !transform.any_op {
    transform.test_succeed_if_operand_of_op_kind %arg0, "func.func" : !transform.any_op
    transform.yield %arg0 : !transform.any_op
  }
  transform.named_sequence @action1(%arg0: !transform.any_op {transform.readonly}) {
    transform.debug.emit_remark_at %arg0, "matched1" : !transform.any_op
    transform.yield 
  }
  transform.named_sequence @action2(%arg0: !transform.any_op {transform.readonly}) {
    transform.debug.emit_remark_at %arg0, "matched2" : !transform.any_op
    transform.yield 
  }
  transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
    %updated_root = transform.foreach_match in %arg0 
        @match1 -> @action1, 
        @match2 -> @action2 : (!transform.any_op) -> !transform.any_op
    transform.yield 
  }
  func.func private @foo()
  func.func private @bar()
  "test.testtest"() : () -> ()
  "test.some_op"() : () -> ()
}

