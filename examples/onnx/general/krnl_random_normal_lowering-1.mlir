"builtin.module"() ({
  "func.func"() <{function_type = (memref<3x4x?x?xf32>) -> memref<3x4x?x?xf32>, sym_name = "test_random_normal_dynamic_lowering"}> ({
  ^bb0(%arg0: memref<3x4x?x?xf32>):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "memref.dim"(%arg0, %0) : (memref<3x4x?x?xf32>, index) -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "memref.dim"(%arg0, %2) : (memref<3x4x?x?xf32>, index) -> index
    %4 = "memref.alloc"(%1, %3) <{alignment = 16 : i64, operandSegmentSizes = array<i32: 2, 0>}> : (index, index) -> memref<3x4x?x?xf32>
    %5 = "arith.constant"() <{value = 12 : index}> : () -> index
    %6 = "arith.constant"() <{value = 2 : index}> : () -> index
    %7 = "memref.dim"(%arg0, %6) : (memref<3x4x?x?xf32>, index) -> index
    %8 = "arith.muli"(%5, %7) : (index, index) -> index
    %9 = "arith.constant"() <{value = 3 : index}> : () -> index
    %10 = "memref.dim"(%arg0, %9) : (memref<3x4x?x?xf32>, index) -> index
    %11 = "arith.muli"(%8, %10) : (index, index) -> index
    %12 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %13 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %14 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    "krnl.random_normal"(%4, %11, %12, %13, %14) : (memref<3x4x?x?xf32>, index, f32, f32, f32) -> ()
    "func.return"(%4) : (memref<3x4x?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

