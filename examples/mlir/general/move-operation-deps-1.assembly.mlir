module {
  func.func @move_region_dependencies() -> f32 {
    %0 = "before"() : () -> f32
    %1 = "moved_op"() : () -> f32
    %2 = "foo"() ({
      %3 = "inner_op"(%1) : (f32) -> f32
      "yield"(%3) : (f32) -> ()
    }) : () -> f32
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

