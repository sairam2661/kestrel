"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>, tensor<f32>) -> tensor<i1>, sym_name = "test_less_should_not_remove_cast"}> ({
  ^bb0(%arg0: tensor<f32>, %arg1: tensor<f32>):
    %0 = "onnx.Cast"(%arg0) {saturate = 1 : si64, to = ui32} : (tensor<f32>) -> tensor<ui32>
    %1 = "onnx.Cast"(%arg1) {saturate = 1 : si64, to = ui32} : (tensor<f32>) -> tensor<ui32>
    %2 = "onnx.Less"(%0, %1) : (tensor<ui32>, tensor<ui32>) -> tensor<i1>
    "onnx.Return"(%2) : (tensor<i1>) -> ()
  }) : () -> ()
}) : () -> ()

