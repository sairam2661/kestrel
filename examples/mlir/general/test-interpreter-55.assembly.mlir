module {
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
      %0 = transform.structured.match ops{["func.func"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.test_produce_param_with_number_of_test_ops %0 : !transform.any_op
      transform.debug.emit_param_as_remark %1 : !transform.test_dialect_param
      %2 = transform.test_add_to_param %1, 100
      transform.debug.emit_param_as_remark %2 : !transform.test_dialect_param
      transform.yield 
    }
  }
  func.func private @one_test_op(%arg0: i32) {
    %0 = "test.op_a"(%arg0) <{attr = 0 : i32}> : (i32) -> i32
    return
  }
  func.func private @three_test_ops(%arg0: i32) {
    %0 = "test.op_a"(%arg0) <{attr = 0 : i32}> : (i32) -> i32
    %1 = "test.op_a"(%arg0) <{attr = 0 : i32}> : (i32) -> i32
    %2 = "test.op_a"(%arg0) <{attr = 0 : i32}> : (i32) -> i32
    return
  }
}

