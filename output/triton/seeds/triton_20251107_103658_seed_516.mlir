"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> (tensor<64xi32>, tensor<64xi32>), sym_name = "complex_if_else"}> ({
    ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
      %0 = "arith.constant"() <{value = dense<10> : tensor<64xi32>}> : () -> tensor<64xi32>
      %1 = "arith.cmpi"(%arg0, %0) <{predicate = 1 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<1xi1>
      %2:2 = "scf.if"(%1) ({
        %3 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        %4 = "arith.subi"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "scf.yield"(%3, %4) : (tensor<64xi32>, tensor<64xi32>) -> ()
      }, {
        %5 = "arith.subi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        %6 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "scf.yield"(%5, %6) : (tensor<64xi32>, tensor<64xi32>) -> ()
      }) : (tensor<1xi1>) -> (tensor<64xi32>, tensor<64xi32>)
      "tt.return"(%2#0, %2#1) : (tensor<64xi32>, tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()