"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>), sym_name = "mixed_ops"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
      %0 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
      %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arithoverflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %2 = "arith.muli"(%1, %0) <{overflowFlags = #arithoverflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %3 = "arith.subi"(%2, %arg0) <{overflowFlags = #arithoverflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %4 = "arith.cmpi"(%3, %arg1) <{predicate = 5 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<1xi1>
      %5 = "arith.select"(%4, %arg1, %arg0) : (tensor<1xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "tt.return"(%5) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()