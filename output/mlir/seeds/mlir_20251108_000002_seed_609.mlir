"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "tensor_elementwise"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %1 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %2 = "arith.minimumsi"(%0, %1) <{overflowFlags = #arith_overflow_none}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%2) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()