"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (memref<1x2x3xi1>, memref<2x3x4xi1>), sym_name = "interleaved_tensors"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags_overflow}> : (index, index) -> index
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags_overflow}> : (index, index) -> index
    %2 = "arith.constant"() <{value = 0 : i1}> : () -> i1
    %3 = "arith.constant"() <{value = 1 : i1}> : () -> i1
    %4 = "arith.constant"() <{value = 2 : i1}> : () -> i1
    %5 = "arith.constant"() <{value = 3 : i1}> : () -> i1
    %6 = "arith.constant"() <{value = 4 : i1}> : () -> i1
    %7 = "arith.constant"() <{value = 5 : i1}> : () -> i1
    %8 = "memref.alloc"() <{shape = [1, 2, 3], memory_space = 0}> : () -> memref<1x2x3xi1>
    %9 = "memref.alloc"() <{shape = [2, 3, 4], memory_space = 0}> : () -> memref<2x3x4xi1>
    "memref.store"(%2, %8, %3, %4, %5) : (i1, memref<1x2x3xi1>, index, index, index) -> ()
    "memref.store"(%3, %8, %4, %5, %6) : (i1, memref<1x2x3xi1>, index, index, index) -> ()
    "memref.store"(%4, %8, %5, %6, %7) : (i1, memref<1x2x3xi1>, index, index, index) -> ()
    "memref.store"(%5, %9, %6, %7, %0) : (i1, memref<2x3x4xi1>, index, index, index) -> ()
    "memref.store"(%6, %9, %7, %0, %1) : (i1, memref<2x3x4xi1>, index, index, index) -> ()
    "memref.store"(%7, %9, %0, %1, %2) : (i1, memref<2x3x4xi1>, index, index, index) -> ()
    "func.return"(%8, %9) : (memref<1x2x3xi1>, memref<2x3x4xi1>) -> ()
  }) : () -> ()
}) : () -> ()