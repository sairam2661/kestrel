"builtin.module"() ({
  "func.func"() <{function_type = (tensor<20x1x!onnx.String>) -> tensor<*xf32>, sym_name = "test_onehotencoder_string1"}> ({
  ^bb0(%arg0: tensor<20x1x!onnx.String>):
    %0 = "onnx.OneHotEncoder"(%arg0) {cats_strings = ["female", "male"], zeros = 1 : si64} : (tensor<20x1x!onnx.String>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

