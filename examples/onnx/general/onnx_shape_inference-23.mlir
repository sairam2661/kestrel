"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x3xui8>, tensor<3x2xui8>, tensor<1xui8>, tensor<1xui8>) -> tensor<*xi32>, sym_name = "test_matmulinteger_1"}> ({
  ^bb0(%arg0: tensor<4x3xui8>, %arg1: tensor<3x2xui8>, %arg2: tensor<1xui8>, %arg3: tensor<1xui8>):
    %0 = "onnx.MatMulInteger"(%arg0, %arg1, %arg2, %arg3) : (tensor<4x3xui8>, tensor<3x2xui8>, tensor<1xui8>, tensor<1xui8>) -> tensor<*xi32>
    "onnx.Return"(%0) : (tensor<*xi32>) -> ()
  }) : () -> ()
}) : () -> ()

