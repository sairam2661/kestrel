module {
  func.func @do_not_move() -> f32 {
    %0 = "moved_op"() : () -> f32
    %1 = "foo"() ({
      "yield"(%0) : (f32) -> ()
    }) : () -> f32
    %2 = "before"() : () -> f32
    return %1 : f32
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

