module {
  func.func @by_operand_type() {
    %cst = arith.constant 2.000000e+00 : f32
    %c8_i32 = arith.constant 8 : i32
    %0 = math.fpowi %cst, %c8_i32 : f32, i32
    %1 = arith.addf %cst, %cst : f32
    %2 = arith.fptoui %1 : f32 to i32
    return
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["arith.fptoui"]} filter_operand_types = [f32] in %arg0 : (!transform.any_op) -> !transform.any_op
      transform.debug.emit_remark_at %0, "matched op name" : !transform.any_op
      transform.test_consume_operand %0 : !transform.any_op
      %1 = transform.structured.match ops{["arith.addf"]} filter_operand_types = [f32] in %arg0 : (!transform.any_op) -> !transform.any_op
      transform.debug.emit_remark_at %1, "matched op name" : !transform.any_op
      transform.test_consume_operand %1 : !transform.any_op
      %2 = transform.structured.match ops{["arith.fptoui"]} filter_operand_types = [i32] in %arg0 : (!transform.any_op) -> !transform.any_op
      transform.debug.emit_remark_at %2, "should not match" : !transform.any_op
      transform.test_consume_operand %2 : !transform.any_op
      %3 = transform.structured.match ops{["math.fpowi"]} filter_operand_types = [f32] in %arg0 : (!transform.any_op) -> !transform.any_op
      transform.debug.emit_remark_at %3, "should not match" : !transform.any_op
      transform.test_consume_operand %3 : !transform.any_op
      transform.yield 
    }
  }
}

