"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_zlow_softmax_constant_shape"}> ({
    %0 = "krnl.global"() {name = "constant_fold_std_alloc_0", shape = [3], value = dense<[1, 5, 10]> : tensor<3xi64>} : () -> memref<3xi64>
    %1 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x1x1x1x32x64xf16>
    %2 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x1x1x1x32x64xf16>
    %3 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<8192xi8>
    "zlow.softmax"(%2, %3, %0, %1) {act_func = "ACT_NONE"} : (memref<1x1x1x1x32x64xf16>, memref<8192xi8>, memref<3xi64>, memref<1x1x1x1x32x64xf16>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

