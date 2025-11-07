"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<f32>, tensor<i32>) -> tensor<4xf32>, sym_name = "test_dequantizelinear_i32"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<f32>, %arg2: tensor<i32>):
    %0 = "onnx.DequantizeLinear"(%arg0, %arg1, %arg2) {axis = 1 : si64} : (tensor<4xi32>, tensor<f32>, tensor<i32>) -> tensor<4xf32>
    "func.return"(%0) : (tensor<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

