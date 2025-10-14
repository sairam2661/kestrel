module {
  func.func @by_type() {
    %c0_i32 = arith.constant 0 : i32
    %cst = arith.constant 1.000000e+00 : f32
    return
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["arith.constant"]} filter_result_type = f32 in %arg0 : (!transform.any_op) -> !transform.any_op
      transform.debug.emit_remark_at %0, "matched op name" : !transform.any_op
      transform.test_consume_operand %0 : !transform.any_op
      transform.yield 
    }
  }
}

