"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> (), sym_name = "tensor_shift_combine", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "arith.constant"() <{value = dense<4> : tensor<128xi32>}> : () -> tensor<128xi32>
    %1 = "arith.constant"() <{value = dense<8> : tensor<128xi32>}> : () -> tensor<128xi32>
    %2 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %3 = "arith.shli"(%arg0, %0) <{overflowFlags = #arith_overflow_flag}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "arith.shrsi"(%arg1, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %5 = "arith.addi"(%3, %4) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %6 = "arith.xori"(%2, %5) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"(%6) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32} : () -> ()