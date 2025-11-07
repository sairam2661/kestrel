"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i64>, tensor<i1>, tensor<1xi64>, tensor<1xf32>) -> (tensor<*xi64>, tensor<*xf32>, tensor<*xi64>, tensor<*xf32>), sym_name = "test_loop_multi_scan_main_graph"}> ({
  ^bb0(%arg0: tensor<i64>, %arg1: tensor<i1>, %arg2: tensor<1xi64>, %arg3: tensor<1xf32>):
    %0:4 = "onnx.Loop"(%arg0, %arg1, %arg2, %arg3) ({
    ^bb0(%arg4: tensor<*xi64>, %arg5: tensor<*xi1>, %arg6: tensor<*xi64>, %arg7: tensor<*xf32>):
      %1 = "onnx.Identity"(%arg5) : (tensor<*xi1>) -> tensor<*xi1>
      %2 = "onnx.Add"(%arg6, %arg4) : (tensor<*xi64>, tensor<*xi64>) -> tensor<*xi64>
      %3 = "onnx.Identity"(%2) : (tensor<*xi64>) -> tensor<*xi64>
      %4 = "onnx.Add"(%arg7, %arg7) : (tensor<*xf32>, tensor<*xf32>) -> tensor<*xf32>
      %5 = "onnx.Identity"(%4) : (tensor<*xf32>) -> tensor<*xf32>
      "onnx.Yield"(%1, %2, %4, %3, %5) : (tensor<*xi1>, tensor<*xi64>, tensor<*xf32>, tensor<*xi64>, tensor<*xf32>) -> ()
    }) : (tensor<i64>, tensor<i1>, tensor<1xi64>, tensor<1xf32>) -> (tensor<*xi64>, tensor<*xf32>, tensor<*xi64>, tensor<*xf32>)
    "onnx.Return"(%0#0, %0#1, %0#2, %0#3) : (tensor<*xi64>, tensor<*xf32>, tensor<*xi64>, tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

