"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>, sym_name = "tensor_operations"}> ({
  ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %1 = "tensor.extract"(%0, %c0) : (tensor<10xi32>, index) -> i32
    %2 = "arith.subi"(%1, %c42) : (i32, i32) -> i32
    %3 = "arith.addi"(%0, %c1) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    "func.return"(%3) : (tensor<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()