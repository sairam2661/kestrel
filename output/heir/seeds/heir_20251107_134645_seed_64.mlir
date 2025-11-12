"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "combined_operations"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
    %0 = "arith.constant"() <{value = dense<[1, 2]>: tensor<2xi32>}> : () -> tensor<2xi32>
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %2 = "arith.muli"(%1, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %3 = "arith.cmpi"(%2, %0, "eq") : (tensor<2xi32>, tensor<2xi32>) -> i1
    %4 = "arith.select"(%3, %1, %2) : (i1, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %5 = "arith.subi"(%4, %0) <{overflowFlags = #arith_overflownone}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%5) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()