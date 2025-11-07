"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4x5xi32>, tensor<3x4x5xi32>) -> tensor<*xi32>, sym_name = "test_prelu_int"}> ({
  ^bb0(%arg0: tensor<3x4x5xi32>, %arg1: tensor<3x4x5xi32>):
    %0 = "onnx.PRelu"(%arg0, %arg1) : (tensor<3x4x5xi32>, tensor<3x4x5xi32>) -> tensor<*xi32>
    "func.return"(%0) : (tensor<*xi32>) -> ()
  }) : () -> ()
}) : () -> ()

