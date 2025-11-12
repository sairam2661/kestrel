"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 8 : i32}], function_type = (tensor<64x64xf32>, tensor<64x64xf32>) -> (), sym_name = "matrix_add"}> ({
    ^bb0(%arg0: tensor<64x64xf32>, %arg1: tensor<64x64xf32>):
      %0 = "arith.addf"(%arg0, %arg1) : (tensor<64x64xf32>, tensor<64x64xf32>) -> tensor<64x64xf32>
      %1 = "arith.constant"() <{value = dense<0.5> : tensor<64x64xf32>}> : () -> tensor<64x64xf32>
      %2 = "arith.mulf"(%0, %1) : (tensor<64x64xf32>, tensor<64x64xf32>) -> tensor<64x64xf32>
      %3 = "tt.call"() <{sym_name = "print_tensor"}> : (tensor<64x64xf32>) -> ()
      "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()