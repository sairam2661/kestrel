"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2x4xui8>, tensor<1xf32>, tensor<1xui8>, tensor<2x4x3xui8>, tensor<1xf32>, tensor<1xui8>, tensor<1xf32>, tensor<1xui8>) -> tensor<*xui8>, sym_name = "test_qlinearmatmul_1"}> ({
  ^bb0(%arg0: tensor<2x2x4xui8>, %arg1: tensor<1xf32>, %arg2: tensor<1xui8>, %arg3: tensor<2x4x3xui8>, %arg4: tensor<1xf32>, %arg5: tensor<1xui8>, %arg6: tensor<1xf32>, %arg7: tensor<1xui8>):
    %0 = "onnx.QLinearMatMul"(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6, %arg7) : (tensor<2x2x4xui8>, tensor<1xf32>, tensor<1xui8>, tensor<2x4x3xui8>, tensor<1xf32>, tensor<1xui8>, tensor<1xf32>, tensor<1xui8>) -> tensor<*xui8>
    "onnx.Return"(%0) : (tensor<*xui8>) -> ()
  }) : () -> ()
}) : () -> ()

