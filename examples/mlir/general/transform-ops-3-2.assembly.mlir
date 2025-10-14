module {
  func.func @loop_peel_first_iter_op() {
    %c0 = arith.constant 0 : index
    %c41 = arith.constant 41 : index
    %c5 = arith.constant 5 : index
    scf.for %arg0 = %c0 to %c41 step %c5 {
      %0 = arith.addi %arg0, %arg0 : index
    }
    return
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["arith.addi"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.get_parent_op %0 {op_name = "scf.for"} : (!transform.any_op) -> !transform.op<"scf.for">
      %peeled_loop, %remainder_loop = transform.loop.peel %1 {peel_front = true} : (!transform.op<"scf.for">) -> (!transform.op<"scf.for">, !transform.op<"scf.for">)
      transform.yield 
    }
  }
}

