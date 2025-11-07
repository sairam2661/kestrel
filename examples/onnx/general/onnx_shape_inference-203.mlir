"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xf32>, tensor<3x2xf32>) -> (tensor<*xf32>, tensor<*xf32>), sym_name = "test_scan_simple_main_graph"}> ({
  ^bb0(%arg0: tensor<2xf32>, %arg1: tensor<3x2xf32>):
    %0:2 = "onnx.Scan"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<*xf32>, %arg3: tensor<*xf32>):
      %1 = "onnx.Add"(%arg2, %arg3) : (tensor<*xf32>, tensor<*xf32>) -> tensor<*xf32>
      "onnx.Yield"(%1, %1) : (tensor<*xf32>, tensor<*xf32>) -> ()
    }) {num_scan_inputs = 1 : si64} : (tensor<2xf32>, tensor<3x2xf32>) -> (tensor<*xf32>, tensor<*xf32>)
    "onnx.Return"(%0#0, %0#1) : (tensor<*xf32>, tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

