"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x8x10x12xf32>, tensor<i32>) -> tensor<*xf32>, sym_name = "test_dft"}> ({
  ^bb0(%arg0: tensor<1x8x10x12xf32>, %arg1: tensor<i32>):
    %0 = "onnx.DFT"(%arg0, %arg1) {axis = 1 : si64, inverse = 0 : si64, onesided = 0 : si64} : (tensor<1x8x10x12xf32>, tensor<i32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

