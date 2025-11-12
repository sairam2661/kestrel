"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3x4xi8>, tensor<3x4x5xi8>) -> tensor<2x3x5xi8>, sym_name = "test_tosa_concat"}> ({
  ^bb0(%arg0: tensor<2x3x4xi8>, %arg1: tensor<3x4x5xi8>):
    %0 = "tosa.concat"(%arg0, %arg1) <{dim = 2 : i64}> : (tensor<2x3x4xi8>, tensor<3x4x5xi8>) -> tensor<2x3x5xi8>
    "func.return"(%0) : (tensor<2x3x5xi8>) -> ()
  }) : () -> ()
}) : () -> ()