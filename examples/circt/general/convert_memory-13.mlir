"builtin.module"() ({
  "func.func"() <{function_type = (memref<1xi32>) -> i32, sym_name = "main"}> ({
  ^bb0(%arg0: memref<1xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "memref.load"(%arg0, %0) : (memref<1xi32>, index) -> i32
    %3 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1xi32>
    "memref.store"(%1, %3, %0) : (i32, memref<1xi32>, index) -> ()
    %4 = "memref.load"(%3, %0) : (memref<1xi32>, index) -> i32
    %5 = "arith.addi"(%2, %4) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

