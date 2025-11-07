"builtin.module"() ({
  "func.func"() <{function_type = (memref<10x10xf32>) -> memref<1xf32>, sym_name = "test_krnl_load_store"}> ({
  ^bb0(%arg0: memref<10x10xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "krnl.load"(%arg0, %0, %0) : (memref<10x10xf32>, index, index) -> f32
    %2 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1xf32>
    "krnl.store"(%1, %2, %0) : (f32, memref<1xf32>, index) -> ()
    "func.return"(%2) : (memref<1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

