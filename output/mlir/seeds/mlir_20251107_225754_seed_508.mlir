"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<3x4xi8>) -> tensor<2x4xi8>, sym_name = "tensorMultiply"}> ({
  ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<3x4xi8>):
    %0 = "tosa.matmul"(%arg0, %arg1) : (tensor<2x3xi8>, tensor<3x4xi8>) -> tensor<2x4xi8>
    "func.return"(%0) : (tensor<2x4xi8>) -> ()
  }) : () -> ()
}) : () -> ()