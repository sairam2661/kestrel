module {
  func.func @test_get_nth_parent() {
    "test.foo"() ({
      "test.foo"() ({
        "test.qux"() ({
          "test.foo"() ({
            "test.bar"() : () -> ()
          }) : () -> ()
        }) : () -> ()
      }) : () -> ()
    }) : () -> ()
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
      %0 = transform.structured.match ops{["test.bar"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.get_parent_op %0 {op_name = "test.foo"} : (!transform.any_op) -> !transform.any_op
      transform.debug.emit_remark_at %1, "1st parent" : !transform.any_op
      %2 = transform.get_parent_op %0 {nth_parent = 2 : i64, op_name = "test.foo"} : (!transform.any_op) -> !transform.any_op
      transform.debug.emit_remark_at %2, "2nd parent" : !transform.any_op
      transform.yield 
    }
  }
}

