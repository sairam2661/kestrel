"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128x128xf32>, tensor<128x128xf32>) -> tensor<128x128xf32>, sym_name = "matrix_multiply"}> ({
    ^bb0(%arg0: tensor<128x128xf32>, %arg1: tensor<128x128xf32>):
      %0 = "tt.global_scratch_alloc"() <{size = 16384 : i32}> : () -> !ttg_SCRATCH
      %1 = "tt.global_scratch_alloc"() <{size = 16384 : i32}> : () -> !ttg_SCRATCH
      %2 = "tt.global_scratch_alloc"() <{size = 16384 : i32}> : () -> !ttg_SCRATCH
      %3 = "tt.global_scratch_alloc"() <{size = 16384 : i32}> : () -> !ttg_SCRATCH
      %4 = "arith.constant"() <{value = dense<2.0> : tensor<128x128xf32>}> : () -> tensor<128x128xf32>
      %5 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith_fastmath}> : (tensor<128x128xf32>, tensor<128x128xf32>) -> tensor<128x128xf32>
      %6 = "arith.addf"(%5, %4) <{fastmath = #arith_fastmath}> : (tensor<128x128xf32>, tensor<128x128xf32>) -> tensor<128x128xf32>
      "tt.return"(%6) : (tensor<128x128xf32>) -> ()
  }) : () -> ()
}) : () -> ()