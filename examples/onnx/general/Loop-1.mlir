"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i64>, tensor<i1>, tensor<?xf32>) -> tensor<?x?xf32>, sym_name = "test_loop"}> ({
  ^bb0(%arg0: tensor<i64>, %arg1: tensor<i1>, %arg2: tensor<?xf32>):
    %0 = "onnx.Loop"(%arg0, %arg1) ({
    ^bb0(%arg3: tensor<i64>, %arg4: tensor<i1>):
      %1 = "onnx.Add"(%arg2, %arg2) : (tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>
      "onnx.Yield"(%arg4, %1) : (tensor<i1>, tensor<?xf32>) -> ()
    }) : (tensor<i64>, tensor<i1>) -> tensor<?x?xf32>
    "func.return"(%0) : (tensor<?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

