"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> (tensor<64xi32>, tensor<64xi32>), sym_name = "complex_if_else"}> ({
    ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
      %0 = "arith.constant"() <{value = dense<1> : tensor<64xi32>}> : () -> tensor<64xi32>
      %1 = "arith.select"(%arg0, %arg1, %0) : (tensor<64xi32>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %2:2 = "scf.if"(%1) ({
        %3 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        %4 = "arith.muli"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "scf.yield"(%3, %4) : (tensor<64xi32>, tensor<64xi32>) -> ()
      }, {
        %5 = "arith.subi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        %6 = "arith.divsi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "scf.yield"(%5, %6) : (tensor<64xi32>, tensor<64xi32>) -> ()
      }) : (tensor<64xi32>) -> (tensor<64xi32>, tensor<64xi32>)
      "tt.return"(%2#0, %2#1) : (tensor<64xi32>, tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()