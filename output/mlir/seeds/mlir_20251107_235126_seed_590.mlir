"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xi8>, tensor<3x3xi8>) -> tensor<3x3xi8>, sym_name = "xor_tensor"}> ({
  ^bb0(%arg0: tensor<3x3xi8>, %arg1: tensor<3x3xi8>):
    %0 = "arith.xor"(%arg0, %arg1) : (tensor<3x3xi8>, tensor<3x3xi8>) -> tensor<3x3xi8>
    "func.return"(%0) : (tensor<3x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()