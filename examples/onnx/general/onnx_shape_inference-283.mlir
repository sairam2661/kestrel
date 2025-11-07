"builtin.module"() ({
  "func.func"() <{function_type = (tensor<12x3x5xf32>, tensor<5xf32>) -> tensor<*xf32>, sym_name = "test_RMSlayer_norm_2inputs"}> ({
  ^bb0(%arg0: tensor<12x3x5xf32>, %arg1: tensor<5xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:2 = "onnx.RMSLayerNormalization"(%arg0, %arg1, %0) {axis = -1 : si64, epsilon = 9.99999974E-6 : f32, stash_type = 1 : si64} : (tensor<12x3x5xf32>, tensor<5xf32>, none) -> (tensor<*xf32>, tensor<*xf32>)
    "func.return"(%1#0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

