"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x1xi32>, tensor<2x1xi32>) -> tensor<2x1xi32>, sym_name = "tensor_math"}> ({
  ^bb0(%arg0: tensor<2x1xi32>, %arg1: tensor<2x1xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<2x1xi32>, tensor<2x1xi32>) -> tensor<2x1xi32>
    %1 = "arith.muli"(%0, %arg0) : (tensor<2x1xi32>, tensor<2x1xi32>) -> tensor<2x1xi32>
    %2 = "arith.subi"(%1, %arg1) : (tensor<2x1xi32>, tensor<2x1xi32>) -> tensor<2x1xi32>
    "func.return"(%2) : (tensor<2x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()