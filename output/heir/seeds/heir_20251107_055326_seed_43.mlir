"builtin.module"() ({
  "func.func"() <{function_type = (memref<4xi4>) -> memref<4xi4>, sym_name = "process_memref"}> ({
  ^bb0(%arg0: memref<4xi4>):
    %c0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %c1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %c2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %c3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %c4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %c5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %c6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %c7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %c8 = "arith.constant"() <{value = 8 : index}> : () -> index
    %c9 = "arith.constant"() <{value = 9 : index}> : () -> index
    %c10 = "arith.constant"() <{value = 10 : index}> : () -> index
    %c11 = "arith.constant"() <{value = 11 : index}> : () -> index
    %c12 = "arith.constant"() <{value = 12 : index}> : () -> index
    %c13 = "arith.constant"() <{value = 13 : index}> : () -> index
    %c14 = "arith.constant"() <{value = 14 : index}> : () -> index
    %c15 = "arith.constant"() <{value = 15 : index}> : () -> index
    %c16 = "arith.constant"() <{value = -1 : i4}> : () -> i4
    %c17 = "arith.constant"() <{value = 1 : i4}> : () -> i4

    scf.for %i0  : index in   .reshape %arg0, %c0, %c4  : memref<4xi4> to memref<4x1xi4>  memref_type
      .init_cond  %c0, %c4 
      : index, index 
      %0 = "tensor.extract"(%arg0, %i0) : (memref<4xi4>, index) -> i4
      %1 = "arith.addi"(%0, %c16) <{overflowFlags = #arith_overflow_none}> : (i4, i4) -> i4
      "tensor.store"(%1, %arg0, %i0) : (i4, memref<4xi4>, index) -> ()
    scf.yield

    %20  : memref<4xi4>  "tensor.cast"(%arg0) : (memref<4xi4>) -> memref<4xi4>
    "func.return"(%arg0) : (memref<4xi4>) -> ()
  }) : () -> ()
}) : () -> ()