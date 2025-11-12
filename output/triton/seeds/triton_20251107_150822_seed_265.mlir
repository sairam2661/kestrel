"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xf32>) -> (tensor<64xi32>, tensor<64xf32>), sym_name = "complex_reduce_and_if"}> ({
    ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xf32>):
      %0 = "arith.constant"() <{value = dense<0> : tensor<64xi32>}> : () -> tensor<64xi32>
      %1 = "tt.reduce"(%arg0, %arg1) <{operation = "add", reduction_type = "sum"}> : (tensor<64xi32>, tensor<64xf32>) -> (tensor<64xi32>, tensor<64xf32>)
      %2 = "scf.if"(%0) ({
        %3 = "arith.subi"(%1#0, %1#1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xf32>) -> tensor<64xi32>
        "scf.yield"(%3) : (tensor<64xi32>) -> ()
      }, {
        %4 = "arith.addi"(%1#0, %1#1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xf32>) -> tensor<64xi32>
        "scf.yield"(%4) : (tensor<64xi32>) -> ()
      }) : (tensor<64xi32>) -> (tensor<64xi32>)
      "tt.return"(%1#0, %2) : (tensor<64xi32>, tensor<64xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 8 : i32, "ttg.num-warps" = 4 : i32} : () -> ()