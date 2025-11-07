"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i1>) -> (tensor<*xf32>, tensor<*xi16>, tensor<*xui8>), sym_name = "test_if_1"}> ({
  ^bb0(%arg0: tensor<i1>):
    %0:3 = "onnx.If"(%arg0) ({
      %1 = "onnx.Constant"() {value = dense<[2.000000e+00, 1.000000e+00]> : tensor<2xf32>} : () -> tensor<*xf32>
      %2 = "onnx.Constant"() {value = dense<[1, 2]> : tensor<2xi16>} : () -> tensor<*xi16>
      %3 = "onnx.Constant"() {value = dense<1> : tensor<2x3xui8>} : () -> tensor<*xui8>
      "onnx.Yield"(%1, %2, %3) : (tensor<*xf32>, tensor<*xi16>, tensor<*xui8>) -> ()
    }, {
      %1 = "onnx.Constant"() {value = dense<[1.000000e+00, 2.000000e+00]> : tensor<2xf32>} : () -> tensor<*xf32>
      %2 = "onnx.Constant"() {value = dense<[1, 2, 3]> : tensor<3xi16>} : () -> tensor<*xi16>
      %3 = "onnx.Constant"() {value = dense<[1, 2, 3]> : tensor<3xui8>} : () -> tensor<*xui8>
      "onnx.Yield"(%1, %2, %3) : (tensor<*xf32>, tensor<*xi16>, tensor<*xui8>) -> ()
    }) : (tensor<i1>) -> (tensor<*xf32>, tensor<*xi16>, tensor<*xui8>)
    "onnx.Return"(%0#0, %0#1, %0#2) : (tensor<*xf32>, tensor<*xi16>, tensor<*xui8>) -> ()
  }) : () -> ()
}) : () -> ()

