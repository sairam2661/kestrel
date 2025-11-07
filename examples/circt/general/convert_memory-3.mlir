"builtin.module"() ({
  "func.func"() <{function_type = (i6) -> i32, sym_name = "main"}> ({
  ^bb0(%arg0: i6):
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<64xi32>
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.index_cast"(%arg0) : (i6) -> index
    %3 = "memref.load"(%0, %2) : (memref<64xi32>, index) -> i32
    %4 = "memref.load"(%0, %1) : (memref<64xi32>, index) -> i32
    %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

