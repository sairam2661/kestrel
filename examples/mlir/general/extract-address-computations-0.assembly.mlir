module {
  func.func @test_load(%arg0: memref<2x16x16xf32>, %arg1: index) -> f32 {
    %c0 = arith.constant 0 : index
    %c8 = arith.constant 8 : index
    %0 = memref.load %arg0[%arg1, %c0, %c8] : memref<2x16x16xf32>
    return %0 : f32
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["func.func"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      transform.apply_patterns to %0 {
        transform.apply_patterns.memref.extract_address_computations
      } : !transform.any_op
      transform.debug.emit_remark_at %0, "transformed" : !transform.any_op
      transform.yield 
    }
  }
}

