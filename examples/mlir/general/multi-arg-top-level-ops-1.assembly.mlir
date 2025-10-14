module {
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op, %arg1: !transform.any_op, %arg2: !transform.param<i64>) {
      transform.yield 
    }
  }
  func.func @foo() {
    return
  }
}

