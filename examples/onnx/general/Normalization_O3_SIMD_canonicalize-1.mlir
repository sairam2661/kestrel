"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x64x32x8xf32>, tensor<32x8xf32>, tensor<32x8xf32>) -> tensor<*xf32>, sym_name = "layernorm_4D_with_scale_bias"}> ({
  ^bb0(%arg0: tensor<2x64x32x8xf32>, %arg1: tensor<32x8xf32>, %arg2: tensor<32x8xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:3 = "onnx.LayerNormalization"(%arg0, %arg1, %arg2) {axis = -2 : si64, epsilon = 9.99999974E-6 : f32, stash_type = 1 : si64} : (tensor<2x64x32x8xf32>, tensor<32x8xf32>, tensor<32x8xf32>) -> (tensor<*xf32>, tensor<*xf32>, tensor<*xf32>)
    "onnx.Return"(%1#0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

