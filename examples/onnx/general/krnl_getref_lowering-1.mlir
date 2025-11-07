"builtin.module"() ({
  "func.func"() <{function_type = (memref<2x2xf32>) -> memref<2x?xf32>, sym_name = "test_getref_lowering_dynamic"}> ({
  ^bb0(%arg0: memref<2x2xf32>):
    %0 = "arith.constant"() <{value = 13 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 5 : index}> : () -> index
    %2 = "memref.alloc"(%1) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<10x?xf32>
    %3 = "krnl.getref"(%2, %0, %1) : (memref<10x?xf32>, i64, index) -> memref<2x?xf32>
    "func.return"(%3) : (memref<2x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

