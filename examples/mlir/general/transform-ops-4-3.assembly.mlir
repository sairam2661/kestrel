module {
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["func.func"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.bufferization.one_shot_bufferize %0 : (!transform.any_op) -> !transform.any_op
      transform.yield 
    }
  }
  func.func @test_unknown_op_failure() -> tensor<?xf32> {
    %0 = "test.dummy_op"() : () -> tensor<?xf32>
    return %0 : tensor<?xf32>
  }
}

