"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i64>, tensor<i1>, tensor<*xi64>) -> (tensor<*xi64>, tensor<*xi64>), sym_name = "test_loop_simple_one_scan_unranked_main_graph"}> ({
  ^bb0(%arg0: tensor<i64>, %arg1: tensor<i1>, %arg2: tensor<*xi64>):
    %0:2 = "onnx.Loop"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: tensor<*xi64>, %arg4: tensor<*xi1>, %arg5: tensor<*xi64>):
      %1 = "onnx.Identity"(%arg4) : (tensor<*xi1>) -> tensor<*xi1>
      %2 = "onnx.Add"(%arg5, %arg3) : (tensor<*xi64>, tensor<*xi64>) -> tensor<*xi64>
      %3 = "onnx.Identity"(%2) : (tensor<*xi64>) -> tensor<*xi64>
      "onnx.Yield"(%1, %2, %3) : (tensor<*xi1>, tensor<*xi64>, tensor<*xi64>) -> ()
    }) : (tensor<i64>, tensor<i1>, tensor<*xi64>) -> (tensor<*xi64>, tensor<*xi64>)
    "onnx.Return"(%0#0, %0#1) : (tensor<*xi64>, tensor<*xi64>) -> ()
  }) : () -> ()
}) : () -> ()

