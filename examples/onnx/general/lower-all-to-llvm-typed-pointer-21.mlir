"builtin.module"() ({
  "func.func"() <{function_type = (memref<2048xf16>, memref<2048xf16>, memref<2048xf16>, memref<3xi64>) -> memref<2048xf16>, sym_name = "test_matmul_bcast_unstacked"}> ({
  ^bb0(%arg0: memref<2048xf16>, %arg1: memref<2048xf16>, %arg2: memref<2048xf16>, %arg3: memref<3xi64>):
    %0 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2048xf16>
    "zlow.matmul"(%arg0, %arg1, %arg2, %arg3, %0) {is_bcast = -1 : si64, is_stacked = 0 : si64} : (memref<2048xf16>, memref<2048xf16>, memref<2048xf16>, memref<3xi64>, memref<2048xf16>) -> ()
    "func.return"(%0) : (memref<2048xf16>) -> ()
  }) : () -> ()
}) : () -> ()

