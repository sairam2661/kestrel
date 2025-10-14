module {
  func.func @test_loop_peeling_not_beneficial() {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c5 = arith.constant 5 : index
    scf.for %arg0 = %c0 to %c40 step %c5 {
      %0 = arith.addi %arg0, %arg0 : index
    }
    return
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["arith.addi"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.get_parent_op %0 {op_name = "scf.for"} : (!transform.any_op) -> !transform.op<"scf.for">
      %peeled_loop, %remainder_loop = transform.loop.peel %1 : (!transform.op<"scf.for">) -> (!transform.any_op, !transform.any_op)
      transform.yield 
    }
  }
}

