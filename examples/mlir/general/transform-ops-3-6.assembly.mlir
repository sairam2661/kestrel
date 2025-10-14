module {
  func.func private @loop_unroll_and_jam_op(%arg0: memref<96x128xi8, 3>, %arg1: memref<128xi8, 3>) {
    %c96 = arith.constant 96 : index
    %c1 = arith.constant 1 : index
    %c128 = arith.constant 128 : index
    %c0 = arith.constant 0 : index
    scf.for %arg2 = %c0 to %c128 step %c1 {
      %0 = memref.load %arg1[%arg2] : memref<128xi8, 3>
      %1 = scf.for %arg3 = %c0 to %c96 step %c1 iter_args(%arg4 = %0) -> (i8) {
        %2 = memref.load %arg0[%arg3, %arg2] : memref<96x128xi8, 3>
        %3 = arith.addi %2, %0 : i8
        scf.yield %3 : i8
      }
      memref.store %1, %arg1[%arg2] : memref<128xi8, 3>
    }
    return
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["memref.store"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.get_parent_op %0 {op_name = "scf.for"} : (!transform.any_op) -> !transform.op<"scf.for">
      transform.loop.unroll_and_jam %1 {factor = 4 : i64} : !transform.op<"scf.for">
      transform.yield 
    }
  }
}

