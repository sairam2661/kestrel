"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xi32>, tensor<3x3xi32>) -> tensor<3x3xi32>, sym_name = "add_tensors"}> ({
  ^bb0(%arg0: tensor<3x3xi32>, %arg1: tensor<3x3xi32>):
    %0 = "arith.addf"(%arg0, %arg1) : (tensor<3x3xi32>, tensor<3x3xi32>) -> tensor<3x3xi32>
    "func.return"(%0) : (tensor<3x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()