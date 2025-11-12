"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "mixed_ops_func"}> ({
    ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
      %0 = "arith.constant"() <{value = dense<2> : tensor<128xi32>}> : () -> tensor<128xi32>
      %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %3 = "arith.cmpi"(%2, %arg0) <{predicate = 5 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
      %4 = "scf.if"(%3) ({
        %5 = "arith.remsi"(%2, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
        "scf.yield"(%5) : (tensor<128xi32>) -> ()
      }, {
        "scf.yield"(%arg0) : (tensor<128xi32>) -> ()
      }) : (tensor<128xi1>) -> tensor<128xi32>
      %6 = "arith.xori"(%4, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "tt.return"(%6) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()