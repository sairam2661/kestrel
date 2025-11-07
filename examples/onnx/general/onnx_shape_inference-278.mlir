"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1024xf32>, tensor<4x1024xf32>) -> tensor<*xf32>, sym_name = "test_custom2"}> ({
  ^bb0(%arg0: tensor<1024xf32>, %arg1: tensor<4x1024xf32>):
    %0 = "onnx.Custom"(%arg0, %arg1) {function_name = "testcall", shape_infer_pattern = "MDBroadcast"} : (tensor<1024xf32>, tensor<4x1024xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

