"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x4xi32>, tensor<5x4xi32>) -> tensor<5x4xi32>, sym_name = "add_tensors"}> ({
  ^bb0(%arg0: tensor<5x4xi32>, %arg1: tensor<5x4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<5x4xi32>, tensor<5x4xi32>) -> tensor<5x4xi32>
    "func.return"(%0) : (tensor<5x4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<5x4xi32>, tensor<5x4xi32>) -> tensor<5x4xi32>, sym_name = "sub_tensors"}> ({
  ^bb1(%arg2: tensor<5x4xi32>, %arg3: tensor<5x4xi32>):
    %1 = "arith.subi"(%arg2, %arg3) : (tensor<5x4xi32>, tensor<5x4xi32>) -> tensor<5x4xi32>
    "func.return"(%1) : (tensor<5x4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<5x4xi32>) -> tensor<5x4xi32>, sym_name = "negate_tensor"}> ({
  ^bb2(%arg4: tensor<5x4xi32>):
    %2 = "arith.negi"(%arg4) : (tensor<5x4xi32>) -> tensor<5x4xi32>
    "func.return"(%2) : (tensor<5x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()