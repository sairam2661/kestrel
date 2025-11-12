"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi8>, sym_name = "vectorized_add"}> ({
  ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<2x3xi8>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi8>
    "func.return"(%0) : (tensor<2x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()