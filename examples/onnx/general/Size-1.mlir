"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x2x?xf32>) -> tensor<i64>, sym_name = "test_size_unknown", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<?x2x?xf32>):
    %0 = "onnx.Size"(%arg0) : (tensor<?x2x?xf32>) -> tensor<i64>
    "func.return"(%0) : (tensor<i64>) -> ()
  }) : () -> ()
}) : () -> ()

