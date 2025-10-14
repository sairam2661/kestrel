module {
  func.func @loop_unroll_and_jam_unsupported_loop_with_results() -> index {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c2 = arith.constant 2 : index
    %0 = scf.for %arg0 = %c0 to %c40 step %c2 iter_args(%arg1 = %c0) -> (index) {
      %1 = arith.addi %arg0, %arg0 : index
      scf.yield %1 : index
    }
    return %0 : index
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["arith.addi"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.get_parent_op %0 {op_name = "scf.for"} : (!transform.any_op) -> !transform.op<"scf.for">
      transform.loop.unroll_and_jam %1 {factor = 4 : i64} : !transform.op<"scf.for">
      transform.yield 
    }
  }
}

