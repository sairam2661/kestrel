"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xi1>, tensor<3x3xi1>) -> tensor<3x3xi1>, sym_name = "xor_tensors"}> ({
    ^bb0(%arg0: tensor<3x3xi1>, %arg1: tensor<3x3xi1>):
      %0 = "tosa.xor"(%arg0, %arg1) : (tensor<3x3xi1>, tensor<3x3xi1>) -> tensor<3x3xi1>
      "func.return"(%0) : (tensor<3x3xi1>) -> ()
  }) : () -> ()
}) : () -> ()