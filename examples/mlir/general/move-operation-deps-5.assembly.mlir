module {
  func.func @do_not_move_slice() -> f32 {
    %0 = "before"() : () -> f32
    %1 = "moved_op"(%0) : (f32) -> f32
    %2 = "foo"(%1) : (f32) -> f32
    return %2 : f32
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["foo"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["before"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      transform.test.move_operand_deps %0 before %1 : !transform.any_op, !transform.any_op
      transform.yield 
    }
  }
}

