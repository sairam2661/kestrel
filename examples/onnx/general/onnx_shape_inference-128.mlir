"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8x8xi32>) -> tensor<*xf32>, sym_name = "test_eyelike_1"}> ({
  ^bb0(%arg0: tensor<8x8xi32>):
    %0 = "onnx.EyeLike"(%arg0) {dtype = 1 : si64, k = 0 : si64} : (tensor<8x8xi32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

