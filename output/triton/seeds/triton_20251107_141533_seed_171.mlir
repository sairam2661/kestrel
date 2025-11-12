"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>), sym_name = "mixed_operations"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
      %0 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
      %1 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %2 = "arith.constant"() <{value = dense<3> : tensor<16xi32>}> : () -> tensor<16xi32>
      %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %4 = "arith.cmpi"(%3, %0) <{predicate = 0 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
      %5 = "arith.select"(%4, %3, %arg0) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %6 = "arith.constant"() <{value = dense<5> : tensor<16xi32>}> : () -> tensor<16xi32>
      %7 = "arith.subi"(%5, %6) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "tt.return"(%7) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()