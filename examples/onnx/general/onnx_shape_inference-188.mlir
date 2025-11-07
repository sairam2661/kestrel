"builtin.module"() ({
  "func.func"() <{function_type = (tensor<20x2x3xf32>) -> tensor<*xf32>, sym_name = "test_onehotencoder_float2"}> ({
  ^bb0(%arg0: tensor<20x2x3xf32>):
    %0 = "onnx.OneHotEncoder"(%arg0) {cats_int64s = [1, 2, 4], cats_strings = ["female", "male"], zeros = 1 : si64} : (tensor<20x2x3xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

