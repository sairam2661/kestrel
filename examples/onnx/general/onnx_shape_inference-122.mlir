"builtin.module"() ({
  "func.func"() <{function_type = (tensor<32x64xi64>) -> tensor<*xi64>, sym_name = "unsqueeze_of_const", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<32x64xi64>):
    %0 = "onnx.Constant"() {value = dense<0> : tensor<i64>} : () -> tensor<i64>
    %1 = "onnx.Unsqueeze"(%arg0, %0) : (tensor<32x64xi64>, tensor<i64>) -> tensor<*xi64>
    "onnx.Return"(%1) : (tensor<*xi64>) -> ()
  }) : () -> ()
}) : () -> ()

