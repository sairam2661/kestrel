"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "tensor_mixed_ops"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.constant"() <{value = dense<[[[1, 2], [3, 4]]]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflow_flags}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %3 = "arith.cmpi"(%2, %arg0, "eq") : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi1>
    %4 = "arith.select"(%3, %2, %0) : (tensor<2x2xi1>, tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%4) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()