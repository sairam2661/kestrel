"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x1xi64>, tensor<?x2xi64>, tensor<2xi64>) -> tensor<2x1xi64>, sym_name = "test_scatter_nd_with_dynamic_indices"}> ({
  ^bb0(%arg0: tensor<2x1xi64>, %arg1: tensor<?x2xi64>, %arg2: tensor<2xi64>):
    %0 = "onnx.ScatterND"(%arg0, %arg1, %arg2) {reduction = "none"} : (tensor<2x1xi64>, tensor<?x2xi64>, tensor<2xi64>) -> tensor<2x1xi64>
    "func.return"(%0) : (tensor<2x1xi64>) -> ()
  }) : () -> ()
}) : () -> ()

