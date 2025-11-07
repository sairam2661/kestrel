"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x2x2xi64>) -> tensor<3x2xi64>, sym_name = "test_reducemax_v13_integer_tensor"}> ({
  ^bb0(%arg0: tensor<3x2x2xi64>):
    %0 = "onnx.ReduceMaxV13"(%arg0) {axes = [1], keepdims = 0 : si64} : (tensor<3x2x2xi64>) -> tensor<3x2xi64>
    "func.return"(%0) : (tensor<3x2xi64>) -> ()
  }) : () -> ()
}) : () -> ()

