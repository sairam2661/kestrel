"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_call_zdnn_meanreduce2d"}> ({
    %0 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2048xf16>
    %1 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2048xf16>
    %2 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<4xi64>
    "zlow.meanreduce2d"(%0, %2, %1) : (memref<2048xf16>, memref<4xi64>, memref<2048xf16>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

