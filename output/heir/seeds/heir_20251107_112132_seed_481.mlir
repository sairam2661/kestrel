"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "tensor_operations"}> ({
    ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
      %0 = "arith.constant"() <{value = dense<2> : tensor<2xi32>}> : () -> tensor<2xi32>
      %1 = "tensor_ext.rotate"(%arg0, %0) <{dim = 0}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
      %2 = "arith.addi"(%arg1, %1) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
      %3 = "tensor_ext.rotate"(%2, %0) <{dim = 1}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
      %4 = "arith.subi"(%3, %arg0) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
      "func.return"(%4) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()