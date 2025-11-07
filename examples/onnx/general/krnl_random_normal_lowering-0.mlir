"builtin.module"() ({
  "func.func"() <{function_type = () -> memref<3x4x5xf32>, sym_name = "test_random_normal_lowering"}> ({
    %0 = "memref.alloc"() <{alignment = 16 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<3x4x5xf32>
    %1 = "arith.constant"() <{value = 60 : index}> : () -> index
    %2 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %3 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %4 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    "krnl.random_normal"(%0, %1, %2, %3, %4) : (memref<3x4x5xf32>, index, f32, f32, f32) -> ()
    "func.return"(%0) : (memref<3x4x5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

