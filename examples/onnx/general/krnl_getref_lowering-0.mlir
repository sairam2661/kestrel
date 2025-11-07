"builtin.module"() ({
  "func.func"() <{function_type = (memref<2x2xf32>) -> memref<2x2xf32>, sym_name = "test_getref_lowering"}> ({
  ^bb0(%arg0: memref<2x2xf32>):
    %0 = "arith.constant"() <{value = 13 : i64}> : () -> i64
    %1 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<10x10xf32>
    %2 = "krnl.getref"(%1, %0) : (memref<10x10xf32>, i64) -> memref<2x2xf32>
    "func.return"(%2) : (memref<2x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

