"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>, tensor<f32>, tensor<f32>) -> tensor<*xf32>, sym_name = "test_range_dynamic_f32"}> ({
  ^bb0(%arg0: tensor<f32>, %arg1: tensor<f32>, %arg2: tensor<f32>):
    %0 = "onnx.Range"(%arg0, %arg1, %arg2) : (tensor<f32>, tensor<f32>, tensor<f32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

