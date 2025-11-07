"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x2x2xi64>) -> tensor<?x2xi64>, sym_name = "test_reducemin_v13_integer_tensor"}> ({
  ^bb0(%arg0: tensor<?x2x2xi64>):
    %0 = "onnx.ReduceMinV13"(%arg0) {axes = [1], keepdims = 0 : si64} : (tensor<?x2x2xi64>) -> tensor<?x2xi64>
    "func.return"(%0) : (tensor<?x2xi64>) -> ()
  }) : () -> ()
}) : () -> ()

