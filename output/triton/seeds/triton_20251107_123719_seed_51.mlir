"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
    %c0 = "arith.constant"() <{value = dense<0> : tensor<64xi32>}> : () -> tensor<64xi32>
    %c1 = "arith.constant"() <{value = dense<1> : tensor<64xi32>}> : () -> tensor<64xi32>
    %c2 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
    %cmp1 = "arith.cmpi"(%arg0, %c0) <{predicate = 1 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
    %cmp2 = "arith.cmpi"(%arg1, %c1) <{predicate = 2 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
    %and = "arith.xori"(%cmp1, %cmp2) : (tensor<64xi1>, tensor<64xi1>) -> tensor<64xi1>
    %sub = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %mul = "arith.muli"(%sub, %c2) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %select = "arith.select"(%and, %sub, %mul) : (tensor<64xi1>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    "tt.return"(%select) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()