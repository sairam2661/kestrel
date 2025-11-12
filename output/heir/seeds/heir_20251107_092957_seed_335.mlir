"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>, sym_name = "tensor_mixed_ops"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: tensor<3xi32>):
    %0 = "arith.constant"() <{value = dense<5> : tensor<3xi32>}> : () -> tensor<3xi32>
    %1 = "arith.addi"(%arg0, %0) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    %2 = "arith.subi"(%1, %arg1) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    %3 = "arith.muli"(%2, %0) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    %4 = "tensor.extract"(%3, %c0) : (tensor<3xi32>, index) -> i32
    %5 = "tensor.insert"(%4, %3, %c1) : (i32, tensor<3xi32>, index) -> tensor<3xi32>
    "func.return"(%5) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()