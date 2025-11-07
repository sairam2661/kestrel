"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi64>, tensor<i64>) -> tensor<i64>, sym_name = "test_gather_scalar"}> ({
  ^bb0(%arg0: tensor<4xi64>, %arg1: tensor<i64>):
    %0 = "onnx.Gather"(%arg0, %arg1) {axis = 0 : si64} : (tensor<4xi64>, tensor<i64>) -> tensor<i64>
    "func.return"(%0) : (tensor<i64>) -> ()
  }) : () -> ()
}) : () -> ()

