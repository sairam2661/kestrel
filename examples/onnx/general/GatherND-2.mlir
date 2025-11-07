"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<?x2xi64>) -> tensor<?xi32>, sym_name = "test_gather_nd_with_dynamic_shape_int"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<?x2xi64>):
    %0 = "onnx.GatherND"(%arg0, %arg1) {batch_dims = 0 : si64} : (tensor<2x2xi32>, tensor<?x2xi64>) -> tensor<?xi32>
    "func.return"(%0) : (tensor<?xi32>) -> ()
  }) : () -> ()
}) : () -> ()

