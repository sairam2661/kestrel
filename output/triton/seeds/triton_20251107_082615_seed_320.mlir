"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "bitwise_xor_combine", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = dense<1> : tensor<4xi32>}> : () -> tensor<4xi32>
    %4 = "arith.xori"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %5 = "tt.reduce"(%4) <{axis = 0 : i32}> ({
    ^bb0(%arg2: i32, %arg3: i32):
      %6 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "tt.reduce.return"(%6) : (i32) -> ()
    }) : (tensor<4xi32>) -> tensor<4xi32>
    %7 = "tt.expand_dims"(%5) <{axis = 1 : i32}> : (tensor<4xi32>) -> tensor<4x1xi32>
    %8 = "arith.xori"(%7, %3) <{overflowFlags = #arith_overflownone}> : (tensor<4x1xi32>, tensor<4xi32>) -> tensor<4x1xi32>
    %9 = "tt.squeeze"(%8) <{axis = 1 : i32}> : (tensor<4x1xi32>) -> tensor<4xi32>
    "tt.return"(%9) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 2 : i32} : () -> ()