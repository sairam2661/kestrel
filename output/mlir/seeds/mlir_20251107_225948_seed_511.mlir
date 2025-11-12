"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<3x2xi8>) -> tensor<2x2xi16>, sym_name = "tensor_matmul"}> ({
  ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<3x2xi8>):
    %0 = "tosa.matmul"(%arg0, %arg1) : (tensor<2x3xi8>, tensor<3x2xi8>) -> tensor<2x2xi16>
    "func.return"(%0) : (tensor<2x2xi16>) -> ()
  }) : () -> ()
}) : () -> ()