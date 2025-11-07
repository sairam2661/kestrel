"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x?xf32>) -> index, sym_name = "test_krnl_dim_lowering"}> ({
  ^bb0(%arg0: memref<?x?xf32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "memref.dim"(%arg0, %1) : (memref<?x?xf32>, index) -> index
    %3 = "memref.alloc"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?x10xf32>
    %4 = "krnl.dim"(%3, %1) : (memref<?x10xf32>, index) -> index
    %5 = "krnl.dim"(%3, %0) : (memref<?x10xf32>, index) -> index
    %6 = "arith.addi"(%4, %5) : (index, index) -> index
    "func.return"(%6) : (index) -> ()
  }) : () -> ()
}) : () -> ()

