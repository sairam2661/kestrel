"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xi64>, tensor<2xi64>) -> (), sym_name = "test_padV13"}> ({
  ^bb0(%arg0: tensor<*xi64>, %arg1: tensor<2xi64>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.PadV13"(%arg0, %arg1, %0) {mode = "constant"} : (tensor<*xi64>, tensor<2xi64>, none) -> tensor<*xi64>
    "onnx.Return"() : () -> ()
  }) : () -> ()
}) : () -> ()

