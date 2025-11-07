"builtin.module"() ({
  "func.func"() <{function_type = (tensor<128xi32>, tensor<i32>, tensor<i32>) -> tensor<128xi32>, sym_name = "test_clip_default_min_int", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<i32>, %arg2: tensor<i32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Clip"(%arg0, %0, %arg2) : (tensor<128xi32>, none, tensor<i32>) -> tensor<128xi32>
    "func.return"(%1) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()

