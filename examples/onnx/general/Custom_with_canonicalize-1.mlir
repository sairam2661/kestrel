"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1024xi32>, tensor<4xf32>) -> tensor<*xf32>, sym_name = "test_custom3"}> ({
  ^bb0(%arg0: tensor<1024xi32>, %arg1: tensor<4xf32>):
    %0 = "onnx.Custom"(%arg0, %arg1) {function_name = "testcall", inputs_for_infer = [1], shape_infer_pattern = "SameAs"} : (tensor<1024xi32>, tensor<4xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

