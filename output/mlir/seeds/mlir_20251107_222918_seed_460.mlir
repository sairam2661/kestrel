"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xi32>, tensor<10x10xi32>) -> tensor<10x10xi32>, sym_name = "tensor_add_and_cmp"}> ({
  ^bb0(%arg0: tensor<10x10xi32>, %arg1: tensor<10x10xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<10x10xi32>, tensor<10x10xi32>) -> tensor<10x10xi32>
    %1 = "arith.cmpi"(%0, %arg1, "eq") : (tensor<10x10xi32>, tensor<10x10xi32>) -> tensor<10x10xi1>
    "func.return"(%1) : (tensor<10x10xi1>) -> ()
  }) : () -> ()
}) : () -> ()