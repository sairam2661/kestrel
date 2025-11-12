"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_op_sequence"}> ({
    ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
      %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflowFlags}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      %1 = "arith.constant"() <{value = dense<2> : tensor<4xi32>}> : () -> tensor<4xi32>
      %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflowFlags}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      %3 = "arith.subi"(%2, %arg1) <{overflowFlags = #arith_overflowFlags}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      %4 = "arith.cmpi"(%3, %arg0, "slt") : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>
      %5 = "arith.constant"() <{value = dense<1> : tensor<4xi32>}> : () -> tensor<4xi32>
      %6 = "arith.select"(%4, %arg1, %5) : (tensor<4xi1>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      "tt.return"(%6) : (tensor<4xi32>) -> ()
  }) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
}) : () -> ()