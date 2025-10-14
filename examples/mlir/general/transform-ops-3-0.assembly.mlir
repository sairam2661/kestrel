module {
  func.func @loop_outline_op(%arg0: index, %arg1: index, %arg2: index) {
    scf.for %arg3 = %arg0 to %arg1 step %arg2 {
      scf.for %arg4 = %arg0 to %arg1 step %arg2 {
        %0 = arith.addi %arg3, %arg4 : index
      }
    }
    scf.for %arg3 = %arg0 to %arg1 step %arg2 {
      %0 = arith.addi %arg3, %arg3 : index
    }
    return
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["arith.addi"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.get_parent_op %0 {op_name = "scf.for"} : (!transform.any_op) -> !transform.op<"scf.for">
      %function, %call = transform.loop.outline %1 {func_name = "foo"} : (!transform.op<"scf.for">) -> (!transform.any_op, !transform.any_op)
      transform.yield 
    }
  }
}

