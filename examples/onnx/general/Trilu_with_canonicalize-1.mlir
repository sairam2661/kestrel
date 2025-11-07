"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x5xi64>, tensor<i64>) -> tensor<4x5xi64>, sym_name = "test_trilu_upper"}> ({
  ^bb0(%arg0: tensor<4x5xi64>, %arg1: tensor<i64>):
    %0 = "onnx.Trilu"(%arg0, %arg1) {upper = 1 : si64} : (tensor<4x5xi64>, tensor<i64>) -> tensor<4x5xi64>
    "func.return"(%0) : (tensor<4x5xi64>) -> ()
  }) : () -> ()
}) : () -> ()

