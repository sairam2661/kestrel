"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_pattern", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = dense<[1, 2, 3, 4]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %2 = "arith.constant"() <{value = dense<2> : tensor<4xi32>}> : () -> tensor<4xi32>
    %3 = "arith.muli"(%1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %4 = "arith.constant"() <{value = dense<1> : tensor<4xi32>}> : () -> tensor<4xi32>
    %5 = "arith.xori"(%3, %4) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %6 = "arith.constant"() <{value = dense<5> : tensor<4xi32>}> : () -> tensor<4xi32>
    %7 = "arith.select"(%arg0, %5, %6) : (i32, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "tt.return"(%7) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 16 : i32} : () -> ()