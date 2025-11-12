"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi16>, tensor<2x3xi16>) -> tensor<2x3xi16>, sym_name = "binary_xor_and_add"}> ({
  ^bb0(%arg0: tensor<2x3xi16>, %arg1: tensor<2x3xi16>):
    %0 = "tosa.logical_xor"(%arg0, %arg1) : (tensor<2x3xi16>, tensor<2x3xi16>) -> tensor<2x3xi16>
    %1 = "arith.addi"(%0, %arg0) : (tensor<2x3xi16>, tensor<2x3xi16>) -> tensor<2x3xi16>
    "func.return"(%1) : (tensor<2x3xi16>) -> ()
  }) : () -> ()
}) : () -> ()