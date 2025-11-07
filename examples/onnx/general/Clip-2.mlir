"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xf32>, tensor<f32>, tensor<f32>) -> tensor<3xf32>, sym_name = "test_clip_default_max_f32"}> ({
  ^bb0(%arg0: tensor<3xf32>, %arg1: tensor<f32>, %arg2: tensor<f32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Clip"(%arg0, %arg1, %0) : (tensor<3xf32>, tensor<f32>, none) -> tensor<3xf32>
    "func.return"(%1) : (tensor<3xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<3xf64>, tensor<f64>, tensor<f64>) -> tensor<3xf64>, sym_name = "test_clip_default_max_f64"}> ({
  ^bb0(%arg0: tensor<3xf64>, %arg1: tensor<f64>, %arg2: tensor<f64>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Clip"(%arg0, %arg1, %0) : (tensor<3xf64>, tensor<f64>, none) -> tensor<3xf64>
    "func.return"(%1) : (tensor<3xf64>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<3xi32>, tensor<i32>, tensor<i32>) -> tensor<3xi32>, sym_name = "test_clip_default_max_i32"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: tensor<i32>, %arg2: tensor<i32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Clip"(%arg0, %arg1, %0) : (tensor<3xi32>, tensor<i32>, none) -> tensor<3xi32>
    "func.return"(%1) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

