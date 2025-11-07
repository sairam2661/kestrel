"builtin.module"() ({
  "func.func"() <{function_type = () -> memref<1xf32>, sym_name = "should_not_fold_not_int_type"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %2 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1xf32>
    "krnl.store"(%1, %2, %0) : (f32, memref<1xf32>, index) -> ()
    "func.return"(%2) : (memref<1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

