"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 32 : i32}], function_type = (tensor<64x64xf32>, tensor<64x64xf32>) -> tensor<64x64xf32>, sym_name = "matrix_add"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 32768 : i32}> : () -> tensor<64x64xf32>
    %1 = "ttg.global_scratch_alloc"() <{size = 32768 : i32}> : () -> tensor<64x64xf32>
    %2 = "ttg.global_scratch_alloc"() <{size = 32768 : i32}> : () -> tensor<64x64xf32>
    %3 = "ttg.global_scratch_alloc"() <{size = 32768 : i32}> : () -> tensor<64x64xf32>
    ^bb0(%arg0: tensor<64x64xf32>, %arg1: tensor<64x64xf32>):
      %4 = "arith.constant"() <{value = dense<0> : tensor<64x64xi32>}> : () -> tensor<64x64xi32>
      %5 = "arith.constant"() <{value = dense<1> : tensor<64x64xi32>}> : () -> tensor<64x64xi32>
      %6 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<64x64xf32>, tensor<64x64xf32>) -> tensor<64x64xf32>
      %7 = "arith.muli"(%6, %5) <{overflowFlags = #arith_overflownone}> : (tensor<64x64xf32>, tensor<64x64xi32>) -> tensor<64x64xf32>
      "tt.return"(%7) : (tensor<64x64xf32>) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 16 : i32} : () -> ()