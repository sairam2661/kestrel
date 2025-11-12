"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> (tensor<32xi32>, tensor<32xi32>), sym_name = "complex_reduction", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "arith.constant"() <{value = dense<0> : tensor<32xi32>}> : () -> tensor<32xi32>
    %2 = "arith.constant"() <{value = dense<10> : tensor<32xi32>}> : () -> tensor<32xi32>
    %3 = "arith.constant"() <{value = dense<5> : tensor<32xi32>}> : () -> tensor<32xi32>
    %4 = "scf.for"(%0, %2, %3, %arg0, %arg1) ({
    ^bb0(%arg2: tensor<32xi32>, %arg3: tensor<32xi32>, %arg4: tensor<32xi32>, %arg5: tensor<32xi32>):
      %5 = "arith.addi"(%arg4, %arg5) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%arg2, %arg3, %arg5, %5) : (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>, tensor<32xi32>) -> ()
    }) : (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>, tensor<32xi32>) -> (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>, tensor<32xi32>)
    %6:2 = "tt.reduce"(%3, %0) ({
    ^bb0(%arg6: tensor<32xi32>, %arg7: i32):
      %8 = "arith.addi"(%arg6, %arg7) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, i32) -> tensor<32xi32>
      "tt.return"(%8) : (tensor<32xi32>) -> ()
    }) : (tensor<32xi32>, i32) -> tensor<32xi32>
    "tt.return"(%4#2, %6) : (tensor<32xi32>, tensor<32xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 2 : i32} : () -> ()