"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i1>, tensor<i64>, tensor<i64>) -> tensor<i64>, sym_name = "test_if_simple"}> ({
  ^bb0(%arg0: tensor<i1>, %arg1: tensor<i64>, %arg2: tensor<i64>):
    %0 = "onnx.If"(%arg0) ({
      "onnx.Yield"(%arg1) : (tensor<i64>) -> ()
    }, {
      "onnx.Yield"(%arg2) : (tensor<i64>) -> ()
    }) : (tensor<i1>) -> tensor<i64>
    "func.return"(%0) : (tensor<i64>) -> ()
  }) : () -> ()
}) : () -> ()

