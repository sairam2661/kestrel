"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8x8xi32>) -> tensor<*xi32>, sym_name = "test_eyelike_2"}> ({
  ^bb0(%arg0: tensor<8x8xi32>):
    %0 = "onnx.EyeLike"(%arg0) {k = 0 : si64} : (tensor<8x8xi32>) -> tensor<*xi32>
    "onnx.Return"(%0) : (tensor<*xi32>) -> ()
  }) : () -> ()
}) : () -> ()

