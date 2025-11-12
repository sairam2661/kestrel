"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> (tensor<4xi32>), sym_name = "complex_reduction"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = dense<0> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "tt.reduce"(%arg0) <{axis = 0 : i32}> ({
    ^bb1(%arg2: i32, %arg3: i32):
      %4 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
      "tt.reduce.return"(%4) : (i32) -> ()
    }) : (tensor<4xi32>) -> tensor<1xi32>
    %2 = "tt.reduce"(%arg1) <{axis = 0 : i32}> ({
    ^bb2(%arg4: i32, %arg5: i32):
      %6 = "arith.addi"(%arg4, %arg5) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
      "tt.reduce.return"(%6) : (i32) -> ()
    }) : (tensor<4xi32>) -> tensor<1xi32>
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflowFlags}> : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
    "tt.return"(%3) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32} : () -> ()