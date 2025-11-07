"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_lower_both_zlow_and_krnl"}> ({
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<10x10xf32>
    %1 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x1x32x64xf16>
    %2 = "krnl.global"() {name = "constant_0", shape = [1, 2], value = dense<[[0.000000e+00, 1.000000e+00]]> : tensor<1x2xf32>} : () -> memref<1x2xf32>
    "zlow.stick"(%0, %1) : (memref<10x10xf32>, memref<1x1x32x64xf16>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

