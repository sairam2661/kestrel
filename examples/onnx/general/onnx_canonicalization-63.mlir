"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i1>, sym_name = "test_less"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
    %0 = "onnx.Cast"(%arg0) {saturate = 1 : si64, to = f32} : (tensor<i32>) -> tensor<f32>
    %1 = "onnx.Cast"(%arg1) {saturate = 1 : si64, to = f32} : (tensor<i32>) -> tensor<f32>
    %2 = "onnx.Less"(%0, %1) : (tensor<f32>, tensor<f32>) -> tensor<i1>
    "onnx.Return"(%2) : (tensor<i1>) -> ()
  }) : () -> ()
}) : () -> ()

