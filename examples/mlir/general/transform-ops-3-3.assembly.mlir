module {
  func.func @loop_pipeline_op(%arg0: memref<?xf32>, %arg1: memref<?xf32>) {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c4 = arith.constant 4 : index
    %cst = arith.constant 1.000000e+00 : f32
    scf.for %arg2 = %c0 to %c4 step %c1 {
      %0 = memref.load %arg0[%arg2] : memref<?xf32>
      %1 = arith.addf %0, %cst : f32
      memref.store %1, %arg1[%arg2] : memref<?xf32>
    }
    return
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["arith.addf"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.get_parent_op %0 {op_name = "scf.for"} : (!transform.any_op) -> !transform.op<"scf.for">
      %2 = transform.loop.pipeline %1 : (!transform.op<"scf.for">) -> !transform.any_op
      transform.debug.emit_remark_at %2, "transformed" : !transform.any_op
      transform.yield 
    }
  }
}

