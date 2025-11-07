"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4x5xf32>, tensor<?x4x5xf32>) -> tensor<*xi1>, sym_name = "test_less_unknown_dims_1"}> ({
  ^bb0(%arg0: tensor<3x4x5xf32>, %arg1: tensor<?x4x5xf32>):
    %0 = "onnx.Less"(%arg0, %arg1) : (tensor<3x4x5xf32>, tensor<?x4x5xf32>) -> tensor<*xi1>
    "onnx.Return"(%0) : (tensor<*xi1>) -> ()
  }) : () -> ()
}) : () -> ()

