module {
  func.func @loop_unroll_and_jam_unsupported_dynamic_trip_count(%arg0: index) {
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    scf.for %arg1 = %c0 to %arg0 step %c2 {
      %0 = arith.addi %arg1, %arg1 : index
    }
    return
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["arith.addi"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.get_parent_op %0 {op_name = "scf.for"} : (!transform.any_op) -> !transform.op<"scf.for">
      transform.loop.unroll_and_jam %1 {factor = 2 : i64} : !transform.op<"scf.for">
      transform.yield 
    }
  }
}

