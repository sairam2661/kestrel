"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xi32>, tensor<10x10xi32>) -> tensor<10x10xi32>, sym_name = "tensor_add"}> ({
  ^bb0(%arg0: tensor<10x10xi32>, %arg1: tensor<10x10xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<10x10xi32>, tensor<10x10xi32>) -> tensor<10x10xi32>
    "func.return"(%0) : (tensor<10x10xi32>) -> ()
  }) : () -> ()
}) : () -> ()