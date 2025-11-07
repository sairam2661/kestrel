"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i64>, tensor<i1>, tensor<1xi64>) -> tensor<1xi64>, sym_name = "test_loop_simple_main_graph", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<i64>, %arg1: tensor<i1>, %arg2: tensor<1xi64>):
    %0 = "onnx.Loop"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: tensor<i64>, %arg4: tensor<i1>, %arg5: tensor<1xi64>):
      %1 = "onnx.Add"(%arg5, %arg3) : (tensor<1xi64>, tensor<i64>) -> tensor<1xi64>
      "onnx.Yield"(%arg4, %1) : (tensor<i1>, tensor<1xi64>) -> ()
    }) : (tensor<i64>, tensor<i1>, tensor<1xi64>) -> tensor<1xi64>
    "func.return"(%0) : (tensor<1xi64>) -> ()
  }) : () -> ()
}) : () -> ()

