"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x384x768xf32>, tensor<768xf32>, tensor<768xf32>) -> tensor<1x384x768xf32>, sym_name = "layernorm_without_bias"}> ({
  ^bb0(%arg0: tensor<1x384x768xf32>, %arg1: tensor<768xf32>, %arg2: tensor<768xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:3 = "onnx.LayerNormalization"(%arg0, %arg1, %0) {axis = 2 : si64, epsilon = 9.99999974E-6 : f32, stash_type = 1 : si64} : (tensor<1x384x768xf32>, tensor<768xf32>, none) -> (tensor<1x384x768xf32>, none, none)
    %2 = "onnx.Add"(%arg2, %1#0) : (tensor<768xf32>, tensor<1x384x768xf32>) -> tensor<1x384x768xf32>
    "func.return"(%2) : (tensor<1x384x768xf32>) -> ()
  }) : () -> ()
}) : () -> ()

