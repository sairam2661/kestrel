"builtin.module"() ({
  "func.func"() <{function_type = (index) -> (), sym_name = "dma"}> ({
  ^bb0(%arg0: index):
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<10xf32>
    %1 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<10xf32>
    %2 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1xi32>
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "arith.constant"() <{value = 1 : index}> : () -> index
    "memref.dma_start"(%0, %arg0, %1, %arg0, %4, %2, %3) : (memref<10xf32>, index, memref<10xf32>, index, index, memref<1xi32>, index) -> ()
    "memref.dma_wait"(%2, %3, %4) : (memref<1xi32>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

