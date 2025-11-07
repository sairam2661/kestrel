"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xf32>, tensor<2xi64>) -> tensor<?x?xf32>, sym_name = "expand_dyn"}> ({
  ^bb0(%arg0: tensor<?x?xf32>, %arg1: tensor<2xi64>):
    %0 = "onnx.Expand"(%arg0, %arg1) : (tensor<?x?xf32>, tensor<2xi64>) -> tensor<?x?xf32>
    "func.return"(%0) : (tensor<?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

