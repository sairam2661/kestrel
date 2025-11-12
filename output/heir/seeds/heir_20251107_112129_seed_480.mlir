"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "tensor_operations"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
    %0 = "arith.constant"() <{value = dense<[1, 2]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %1 = "tensor.insert"(%0, %arg0) <{position = [0]}> : (tensor<2xi32>, tensor<2xi32>, index) -> tensor<2xi32>
    %2 = "tensor_ext.rotate"(%1) <{dim = 0, offset = 1}> : (tensor<2xi32>, index, index) -> tensor<2xi32>
    %3 = "arith.addi"(%arg1, %2) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %4 = "arith.subi"(%arg0, %3) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %5 = "arith.muli"(%4, %0) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%5) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()