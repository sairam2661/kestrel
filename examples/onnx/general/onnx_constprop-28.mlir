"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2xui8>) -> tensor<1x2xui8>, sym_name = "test_div_ones"}> ({
  ^bb0(%arg0: tensor<1x2xui8>):
    %0 = "onnx.Constant"() {value = dense<1> : tensor<1x2xui8>} : () -> tensor<1x2xui8>
    %1 = "onnx.Div"(%arg0, %0) : (tensor<1x2xui8>, tensor<1x2xui8>) -> tensor<1x2xui8>
    "onnx.Return"(%1) : (tensor<1x2xui8>) -> ()
  }) : () -> ()
}) : () -> ()

