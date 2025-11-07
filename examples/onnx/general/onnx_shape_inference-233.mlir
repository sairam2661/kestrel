"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4x5xf32>) -> tensor<*xf32>, sym_name = "hardmax"}> ({
  ^bb0(%arg0: tensor<3x4x5xf32>):
    %0 = "onnx.Hardmax"(%arg0) {axis = 1 : si64} : (tensor<3x4x5xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

