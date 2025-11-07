"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_call_zdnn_cond2d_valid_padding"}> ({
    %0 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2048xf16>
    %1 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2048xf16>
    %2 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2048xf16>
    %3 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2048xf16>
    %4 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<7xi64>
    "zlow.conv2d"(%0, %1, %2, %4, %3) {act_func = "ACT_NONE", kernel_shape = [5, 5], padding_type = "VALID_PADDING", strides = [2, 2]} : (memref<2048xf16>, memref<2048xf16>, memref<2048xf16>, memref<7xi64>, memref<2048xf16>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

