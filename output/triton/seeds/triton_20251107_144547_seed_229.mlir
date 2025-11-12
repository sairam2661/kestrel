"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>, sym_name = "tensor_mix"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: tensor<3xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<3xi32>}> : () -> tensor<3xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    %3 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    %4 = "arith.xori"(%2, %3) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    %5 = "arith.cmpi"(%2, %3) <{predicate = 4 : i64}> : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi1>
    %6 = "arith.select"(%5, %4, %2) : (tensor<3xi1>, tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    "tt.return"(%6) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()