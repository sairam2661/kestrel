"builtin.module"() ({
  "func.func"() <{function_type = (memref<4xi32>) -> memref<4xi32>, sym_name = "dealloc_copy"}> ({
  ^bb0(%arg0: memref<4xi32>):
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<4xi32>
    "memref.copy"(%arg0, %0) : (memref<4xi32>, memref<4xi32>) -> ()
    "memref.dealloc"(%0) : (memref<4xi32>) -> ()
    "func.return"(%0) : (memref<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()

