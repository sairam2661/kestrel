module {
  func.func @test_mixed_loop_extension_scf_transform(%arg0: tensor<?xf32>) -> tensor<?xf32> {
    %0 = "test.foo"() : () -> index
    %1 = "test.foo"() : () -> index
    %2 = "test.foo"() : () -> index
    %3 = scf.for %arg1 = %0 to %1 step %2 iter_args(%arg2 = %arg0) -> (tensor<?xf32>) {
      %4 = "test.foo"(%arg2) : (tensor<?xf32>) -> tensor<?xf32>
      scf.yield %4 : tensor<?xf32>
    }
    return %3 : tensor<?xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["scf.for"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      transform.loop.hoist_loop_invariant_subsets %0 : !transform.any_op
      transform.loop.unroll %0 {factor = 4 : i64} : !transform.any_op
      transform.yield 
    }
  }
}

